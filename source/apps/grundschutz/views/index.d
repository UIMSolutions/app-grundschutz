module apps.grundschutz.views.index;

import apps.grundschutz;
@safe:

class DGSIndexPageView : DView {
  mixin(ViewThis!("GSIndexPageView"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    /* this
      .pageHeader
        .title("projects -> Index"); */
  }
}
mixin(ViewCalls!("GSIndexPageView"));
