import { defineUserConfig } from "vuepress";
import { hopeTheme } from "vuepress-theme-hope";

import theme from "./theme.ts";

export default defineUserConfig({
  base: "/",

  lang: "en-US",
  title: "Docs Demo",
  description: "A docs demo for vuepress-theme-hope",

  theme,

  // Enable it with pwa
  // shouldPrefetch: false,
}); // export default defineUserConfig
