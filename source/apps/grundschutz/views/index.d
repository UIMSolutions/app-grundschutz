module apps.projects.views.index;

import apps.projects;
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
