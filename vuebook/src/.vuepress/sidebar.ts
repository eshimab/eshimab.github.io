import { sidebar } from "vuepress-theme-hope";

export default sidebar({
  "/": [
    "",
    {
      text: "Setup",
      icon: "book",
      prefix: "setup/",
      children: "structure",
    },
    {
      text: "Notes",
      icon: "book",
      prefix: "notemds/",
      children: "structure",
    },
    {
      text: "InFlux Users Guide",
      icon: "book",
      prefix: "influx/",
      children: "structure",
    },
    // {
      // text: "VuePress Example: Demo",
      // icon: "laptop-code",
      // prefix: "demo/",
      // link: "demo/",
      // children: "structure",
    // },
    // {
    //   text: "VuePress Example: Docs",
    //   icon: "book",
    //   prefix: "guide/",
    //   children: "structure",
    // },
    {
      text: "VuePress Examples All",
      icon: "book",
      prefix: "vp-examples",
      children: "structure",
    },
    // "slides",
  ],
});
