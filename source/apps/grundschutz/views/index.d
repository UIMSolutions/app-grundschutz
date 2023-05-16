module apps.grundschutz.views.index;

import apps.grundschutz;
@safe:

class DGSIndexView : DView {
  mixin(ViewThis!("GSIndexView"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DGSIndexView~"DGSIndexView("~this.className~")::toH5");

    return [
      H5Div("APP GS -> Index")
    ].toH5;
  }
}
mixin(ViewCalls!("GSIndexView"));
