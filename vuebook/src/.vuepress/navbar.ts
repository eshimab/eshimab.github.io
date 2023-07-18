import { navbar } from "vuepress-theme-hope";

export default navbar([
  "/",
  "/setup/",
  "/influx/",
  "/notemds/",
  {
    text: "VuePress Examples",
    icon: "lightbulb",
    prefix: "vp-examples/",
    children: [
      {
        text: "Demo",
        icon: "lightbulb",
        prefix: "demo",
        children: ["baz", { text: "...", icon: "ellipsis", link: "#" }],
      },
      {
        text: "Bar",
        icon: "lightbulb",
        prefix: "guide/bar/",
        children: ["baz", { text: "...", icon: "ellipsis", link: "#" }],
      },
      {
        text: "Foo",
        icon: "lightbulb",
        prefix: "guide/foo/",
        children: ["ray", { text: "...", icon: "ellipsis", link: "#" }],
      },
    ],
  },
  {
    text: "V2 Docs",
    icon: "book",
    link: "https://theme-hope.vuejs.press/",
  },
]);
