module apps.grundschutz;

mixin(ImportPhobos!());

// External
public {
  import vibe.d;
}

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import web.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.grundschutz.controllers;
  import apps.grundschutz.helpers;
  import apps.grundschutz.routers;
  import apps.grundschutz.tests;
  import apps.grundschutz.views;
}

@safe:
static this() {
  auto myApp = App("grundschutzApp", "apps/grundschutz");

  with (myApp) {
    importTranslations;
    addControllers([
      "gs.index": IndexPageController
    ]);
    addRoutes(
      Route("", HTTPMethod.GET, controller("gs.index")),
      Route("/", HTTPMethod.GET, controller("gs.index"))
    );
  }

  AppRegistry.register("apps.grundschutz", myApp);
}