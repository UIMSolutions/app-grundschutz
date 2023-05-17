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
public import uim.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.grundschutz.controllers;
  import apps.grundschutz.helpers;
  import apps.grundschutz.tests;
  import apps.grundschutz.views;
}

DApp gsApp;
static this() {
  gsApp = App
    .name("grundschutzApp")
    .rootPath("/apps/grundschutz")
    .addRoute(Route("", HTTPMethod.GET, GSIndexPageController));
    .addRoute(Route("/", HTTPMethod.GET, GSIndexPageController));
}