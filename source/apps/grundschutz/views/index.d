module apps.grundschutz.views.index;

import apps.grundschutz;
@safe:

class DIndexView : DView {
  mixin(ViewThis!("IndexView"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DIndexView~"DIndexView("~this.className~")::toH5");

    return [
      H5Div("APP GS -> Index")
    ].toH5;
  }
}
mixin(ViewCalls!("IndexView"));
