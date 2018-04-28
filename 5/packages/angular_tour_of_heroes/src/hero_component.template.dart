// **************************************************************************
// Generator: Instance of 'Compiler'
// **************************************************************************

// ignore_for_file: cancel_subscriptions,constant_identifier_names,duplicate_import,non_constant_identifier_names,library_prefixes,UNUSED_IMPORT,UNUSED_SHOWN_NAME
import 'hero_component.dart';
export 'hero_component.dart';
import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';
import 'hero.dart';
import 'hero_service.dart';
import 'route_paths.dart' as paths;
import 'package:angular/src/di/reflector.dart' as _ngRef;
import 'hero.template.dart' as _ref0;
import 'hero_service.template.dart' as _ref1;
import 'package:angular/angular.template.dart' as _ref2;
import 'package:angular_forms/angular_forms.template.dart' as _ref3;
import 'package:angular_router/angular_router.template.dart' as _ref4;
import 'route_paths.template.dart' as _ref5;
import 'package:angular_tour_of_heroes/src/hero_component.css.shim.dart' as import0;
import 'package:angular/src/core/linker/app_view.dart';
import 'hero_component.dart' as import2;
import 'package:angular/src/core/linker/view_container.dart';
import 'package:angular/src/common/directives/ng_if.dart';
import 'package:angular/src/core/render/api.dart';
import 'package:angular/src/core/linker/view_type.dart' as import6;
import 'package:angular/src/core/change_detection/change_detection.dart';
import 'dart:html' as import8;
import 'package:angular/src/core/linker/app_view_utils.dart' as import9;
import 'package:angular/angular.dart';
import 'package:angular/src/core/linker/template_ref.dart';
import 'package:angular_forms/src/directives/default_value_accessor.dart' as import12;
import 'package:angular_forms/src/directives/control_value_accessor.dart' as import13;
import 'package:angular_forms/src/directives/ng_model.dart' as import14;
import 'package:angular/src/core/di/opaque_token.dart' as import15;
import 'package:angular_forms/src/directives/control_value_accessor.dart' as import16;
import 'package:angular_forms/src/directives/ng_control.dart' as import17;
import 'hero_service.dart' as import18;
import 'package:angular_router/src/location/location.dart' as import19;

const List<dynamic> styles$HeroComponent = const [import0.styles];

class ViewHeroComponent0 extends AppView<import2.HeroComponent> {
  ViewContainer _appEl_0;
  NgIf _NgIf_0_9;
  static RenderComponentType _renderType;
  ViewHeroComponent0(AppView<dynamic> parentView, int parentIndex) : super(import6.ViewType.component, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    rootEl = import8.document.createElement('my-hero');
    _renderType ??= import9.appViewUtils.createRenderType('', ViewEncapsulation.Emulated, styles$HeroComponent);
    setupComponentType(_renderType);
  }
  @override
  ComponentRef<import2.HeroComponent> build() {
    final _rootEl = rootEl;
    final import8.HtmlElement parentRenderNode = initViewRoot(_rootEl);
    final _anchor_0 = createViewContainerAnchor();
    parentRenderNode.append(_anchor_0);
    _appEl_0 = new ViewContainer(0, null, this, _anchor_0);
    TemplateRef _TemplateRef_0_8 = new TemplateRef(_appEl_0, viewFactory_HeroComponent1);
    _NgIf_0_9 = new NgIf(_appEl_0, _TemplateRef_0_8);
    init(const [], null);
    return null;
  }

  @override
  void detectChangesInternal() {
    final import2.HeroComponent _ctx = ctx;
    _NgIf_0_9.ngIf = (_ctx.hero != null);
    _appEl_0.detectChangesInNestedViews();
  }

  @override
  void destroyInternal() {
    _appEl_0?.destroyNestedViews();
  }
}

AppView<import2.HeroComponent> viewFactory_HeroComponent0(AppView<dynamic> parentView, int parentIndex) {
  return new ViewHeroComponent0(parentView, parentIndex);
}

class _ViewHeroComponent1 extends AppView<import2.HeroComponent> {
  import8.DivElement _el_0;
  import8.Element _el_1;
  import8.Text _text_2;
  import8.DivElement _el_3;
  import8.Element _el_4;
  import8.Text _text_6;
  import8.DivElement _el_7;
  import8.Element _el_8;
  import8.InputElement _el_10;
  import12.DefaultValueAccessor _DefaultValueAccessor_10_5;
  List<import13.ControlValueAccessor<dynamic>> _NgValueAccessor_10_6;
  import14.NgModel _NgModel_10_7;
  import8.ButtonElement _el_11;
  import8.ButtonElement _el_13;
  var _expr_0;
  var _expr_1;
  _ViewHeroComponent1(AppView<dynamic> parentView, int parentIndex) : super(import6.ViewType.embedded, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways) {
    componentType = ViewHeroComponent0._renderType;
  }
  @override
  ComponentRef<import2.HeroComponent> build() {
    var doc = import8.document;
    _el_0 = doc.createElement('div');
    addShimC(_el_0);
    _el_1 = createAndAppend(doc, 'h2', _el_0);
    addShimE(_el_1);
    _text_2 = new import8.Text('');
    _el_1.append(_text_2);
    _el_3 = createDivAndAppend(doc, _el_0);
    addShimC(_el_3);
    _el_4 = createAndAppend(doc, 'label', _el_3);
    addShimE(_el_4);
    import8.Text _text_5 = new import8.Text('id:');
    _el_4.append(_text_5);
    _text_6 = new import8.Text('');
    _el_3.append(_text_6);
    _el_7 = createDivAndAppend(doc, _el_0);
    addShimC(_el_7);
    _el_8 = createAndAppend(doc, 'label', _el_7);
    addShimE(_el_8);
    import8.Text _text_9 = new import8.Text('name:');
    _el_8.append(_text_9);
    _el_10 = createAndAppend(doc, 'input', _el_7);
    createAttr(_el_10, 'placeholder', 'name');
    addShimC(_el_10);
    _DefaultValueAccessor_10_5 = new import12.DefaultValueAccessor(_el_10);
    _NgValueAccessor_10_6 = [_DefaultValueAccessor_10_5];
    _NgModel_10_7 = new import14.NgModel(null, _NgValueAccessor_10_6);
    _el_11 = createAndAppend(doc, 'button', _el_0);
    addShimC(_el_11);
    import8.Text _text_12 = new import8.Text('Back');
    _el_11.append(_text_12);
    _el_13 = createAndAppend(doc, 'button', _el_0);
    addShimC(_el_13);
    import8.Text _text_14 = new import8.Text('Save');
    _el_13.append(_text_14);
    _el_10.addEventListener('blur', eventHandler0(_DefaultValueAccessor_10_5.touchHandler));
    _el_10.addEventListener('input', eventHandler1(_handle_input_10_2));
    final subscription_0 = _NgModel_10_7.update.listen(eventHandler1(_handle_ngModelChange_10_0));
    _el_11.addEventListener('click', eventHandler0(ctx.goBack));
    _el_13.addEventListener('click', eventHandler0(ctx.save));
    init([_el_0], [subscription_0]);
    return null;
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((identical(token, const import15.MultiToken<import16.ControlValueAccessor>('NgValueAccessor')) && (10 == nodeIndex))) {
      return _NgValueAccessor_10_6;
    }
    if (((identical(token, import14.NgModel) || identical(token, import17.NgControl)) && (10 == nodeIndex))) {
      return _NgModel_10_7;
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final import2.HeroComponent _ctx = ctx;
    bool changed = false;
    bool firstCheck = (this.cdState == 0);
    changed = false;
    _NgModel_10_7.model = _ctx.hero.name;
    _NgModel_10_7.ngAfterChanges();
    if (firstCheck) {
      _NgModel_10_7.ngOnInit();
    }
    final currVal_0 = import9.interpolate0(_ctx.hero.name);
    if (!identical(_expr_0, currVal_0)) {
      _text_2.text = currVal_0;
      _expr_0 = currVal_0;
    }
    final currVal_1 = import9.interpolate0(_ctx.hero.id);
    if (!identical(_expr_1, currVal_1)) {
      _text_6.text = currVal_1;
      _expr_1 = currVal_1;
    }
  }

  void _handle_ngModelChange_10_0($event) {
    ctx.hero.name = $event;
  }

  void _handle_input_10_2($event) {
    _DefaultValueAccessor_10_5.handleChange($event.target.value);
  }
}

AppView<import2.HeroComponent> viewFactory_HeroComponent1(AppView<dynamic> parentView, int parentIndex) {
  return new _ViewHeroComponent1(parentView, parentIndex);
}

const List<dynamic> styles$HeroComponentHost = const [];

class _ViewHeroComponentHost0 extends AppView<dynamic> {
  ViewHeroComponent0 _compView_0;
  import2.HeroComponent _HeroComponent_0_5;
  _ViewHeroComponentHost0(AppView<dynamic> parentView, int parentIndex) : super(import6.ViewType.host, {}, parentView, parentIndex, ChangeDetectionStrategy.CheckAlways);
  @override
  ComponentRef build() {
    _compView_0 = new ViewHeroComponent0(this, 0);
    rootEl = _compView_0.rootEl;
    _HeroComponent_0_5 = new import2.HeroComponent(this.injectorGet(import18.HeroService, viewData.parentIndex), this.injectorGet(import19.Location, viewData.parentIndex));
    _compView_0.create(_HeroComponent_0_5, projectableNodes);
    init0(rootEl);
    return new ComponentRef<import2.HeroComponent>(0, this, rootEl, _HeroComponent_0_5);
  }

  @override
  void detectChangesInternal() {
    _compView_0.detectChanges();
  }

  @override
  void destroyInternal() {
    _compView_0?.destroy();
  }
}

AppView viewFactory_HeroComponentHost0(AppView<dynamic> parentView, int parentIndex) {
  return new _ViewHeroComponentHost0(parentView, parentIndex);
}

const ComponentFactory<import2.HeroComponent> HeroComponentNgFactory = const ComponentFactory<import2.HeroComponent>('my-hero', viewFactory_HeroComponentHost0, _HeroComponentMetadata);
const _HeroComponentMetadata = const [];
var _visited = false;
void initReflector() {
  if (_visited) {
    return;
  }
  _visited = true;

  _ngRef.registerComponent(HeroComponent, HeroComponentNgFactory);
  _ref0.initReflector();
  _ref1.initReflector();
  _ref2.initReflector();
  _ref3.initReflector();
  _ref4.initReflector();
  _ref5.initReflector();
}