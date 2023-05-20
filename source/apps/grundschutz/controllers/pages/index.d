module apps.grundschutz.controllers.pages.index;

import apps.grundschutz;
@safe:

class DIndexPageController : DAPPPageController {
  mixin(ControllerThis!("IndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(IndexView(this));
  }
}
mixin(ControllerCalls!("IndexPageController"));
