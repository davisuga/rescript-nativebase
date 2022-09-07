const { mergeConfig } = require('vite');
const trace = (x) => {
  console.log(x)
  return x
}
module.exports = trace({
  async viteFinal(config) {
    // Merge custom configuration into the default config
    return trace(mergeConfig(config, {
      // Use the same "resolve" configuration as your app
      resolve:{alias: {
        'react-native': 'react-native-web',
      }}
    }));
  },
  "stories": [
    "../src/**/*.stories.mdx",
    "../src/**/*Stories.bs.@(js|jsx|ts|tsx)"
  ],
  "addons": [
    "@storybook/addon-links",
    "@storybook/addon-essentials",
    "@storybook/addon-interactions",
    '@storybook/addon-react-native-web'
  ,
  'storybook-addon-swc'],
  // core: {
  //   builder: '@storybook/builder-vite', // 👈 The builder enabled here.
  // },
  // "framework": "@storybook/react",
  "core": {
    "builder": "@storybook/builder-webpack5"
  }

})