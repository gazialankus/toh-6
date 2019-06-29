import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:stream_transform/stream_transform.dart';

import 'route_paths.dart';
import 'hero_search_service.dart';
import 'hero.dart';

@Component(
  selector: 'hero-search',
  templateUrl: 'hero_search_component.html',
  styleUrls: ['hero_search_component.css'],
  directives: [coreDirectives],
  providers: [ClassProvider(HeroSearchService)],
  pipes: [commonPipes],
)
class HeroSearchComponent implements OnInit {
  HeroSearchService _heroSearchService;
  Router _router;

  Stream<List<Hero>> heroes;
  StreamController<String> _searchTerms = StreamController<String>.broadcast();

  HeroSearchComponent(this._heroSearchService, this._router) {}

  void search(String term) => _searchTerms.add(term);

  void ngOnInit() async {
    heroes = _searchTerms.stream
        .transform(debounce(Duration(milliseconds: 300)))
        .distinct() // here we simply have single terms flowing. the following will transform them to results for this term.
                    // the inner function gets a term and creates a List of results for it. the result is a
                    // list of elements for each term. term -> List<Hero> is what we have in this stream transformation. 
                    // it's actually term->Stream<List<Hero>>, but the stream emits a single List<Hero>.
                    // role of switchmap still not clear...
                    // switchMap calls this function for each term. if there's a new term coming in before the old one is done, 
                    // the old one's list of items are not emitted. yes, more clearly: 
                    // if the old one's stream did not emit, yet (it's results did not arrive from the server, yet)
                    //   and the new term arrived, whose stream is immediately created (which would emit later in time)
                    //     then, the old stream is not used anymore. old one's results are ignored. are not emitted from here.
                    //     instead, we wait for the new one's results.
                    //     so, we could never get a result in this scenario: 
                    //       if we created a term every 0.1 seconds and the results arrive from the server in 0.2 seconds. 
        .transform(switchMap((term) => term.isEmpty
            ? Stream<List<Hero>>.fromIterable([<Hero>[]])
            : _heroSearchService.search(term).asStream()))
        .handleError((e) {
      print(e); // for demo purposes only
    });
  }

  String _heroUrl(int id) =>
      RoutePaths.hero.toUrl(parameters: {idParam: '$id'});

  Future<NavigationResult> gotoDetail(Hero hero) =>
      _router.navigate(_heroUrl(hero.id));
}
