import { navbar } from "vuepress-theme-hope";

export default navbar([
  "/",
  "/setup/",
  "/influx/",
  "/notemds/",
  // begin /vp-examples/
  {
    text: "VuePress Examples",
    icon: "lightbulb",
    prefix: "vp-examples/",
    // beg: children.vp-examples/
    children: [
      // beg_vp-examples/demo/
      {
        text: "Demo",
        icon: "lightbulb",
        prefix: "demo/",
        children: ["baz", { text: "...", icon: "ellipsis", link: "#" }],
      }, // end_vp-examples/demo/
      // dec: vp-examples/guide/bar/
      {
        text: "Bar",
        icon: "lightbulb",
        prefix: "guide/bar/",
        children: ["baz", { text: "...", icon: "ellipsis", link: "#" }],
      }, // end: vp-examples/guide/bar/
      // beg: vp-examples/guide/foo/
      {
        text: "Foo",
        icon: "lightbulb",
        prefix: "guide/foo/",
        children: ["ray", { text: "...", icon: "ellipsis", link: "#" }],
      }, 
      // end: vp-examples/guide/bar
    ],// end: children.vp-examples/
  }, // end: vp-examples/
  // beg: Example-link
  {
    text: "V2 Docs",
    icon: "book",
    link: "https://theme-hope.vuejs.press/",
  }, // end: Example-link
]); // end: export default navbar
