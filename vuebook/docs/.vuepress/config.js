








module.exports = {
  title: 'VuePress',
  description: 'A demo documentation using VuePress',
  themeConfig: {
    search,
    nav: [
      { text: 'Counter', link: '/counter/' }
    ],
    sidebar: [
      {
        title: 'Counter',
        collapsable: false,
        children: [
          ['/counter/usage', 'Usage'],
          ['/counter/see-also', 'See Also']
        ]
      }
    ],
    sidebarDepth: 4 
  }
};