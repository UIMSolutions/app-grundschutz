module apps.grundschutz.views.index;

import apps.grundschutz;
@safe:

class DProjectsIndexView : DView {
  mixin(ViewThis!("ProjectsIndexView"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    /* this
      .pageHeader
        .title("projects -> Index"); */
  }
}
mixin(ViewCalls!("ProjectsIndexView", "DProjectsIndexView"));
