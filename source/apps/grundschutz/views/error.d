module apps.grundschutz.views.error;

import apps.grundschutz;
@safe:

class DGSErrorView : DView {
  mixin(ViewThis!("GSErrorView"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DGSErrorView~":GSErrorView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("Error")
    ].toH5;
  }
}
mixin(ViewCalls!("GSErrorView"));
