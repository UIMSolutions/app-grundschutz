module apps.grundschutz.controllers.pages.index;

import apps.grundschutz;
@safe:

class DGSIndexPageController : DAPPPageController {
  mixin(ControllerThis!("GSIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(GSIndexView(this));
  }
}
mixin(ControllerCalls!("GSIndexPageController"));
