module apps.cms.controllers.pages.index;

import apps.cms;
@safe:

class DGSIndexPageController : DPageController {
  mixin(ControllerThis!("GSIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(GSIndexView(this));
  }
}
mixin(ControllerCalls!("GSIndexPageController"));
