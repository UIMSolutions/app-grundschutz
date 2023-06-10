module apps.grundschutz.controllers.pages.error;

import apps.grundschutz;
@safe:

class DGSErrorPageController : DPageController {
  mixin(ControllerThis!("GSErrorPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(GSErrorView(this));
  }
}
mixin(ControllerCalls!("GSErrorPageController", "DGSErrorPageController"));
