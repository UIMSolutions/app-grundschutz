module apps.grundschutz;

mixin(ImportPhobos!());

// Dub
public import vibe.d;

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
  AppRegistry.register("apps.grundschutz",  
    App("grundschutzApp", "apps/grundschutz")
      .importTranslations()
      .addRoutes(
        Route("", HTTPMethod.GET, IndexPageController),
        Route("/", HTTPMethod.GET, IndexPageController)
      )
    );
}