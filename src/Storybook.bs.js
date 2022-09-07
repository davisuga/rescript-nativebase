'use strict';


function story(title, component, argTypes, excludeStoriesOpt, param) {
  var excludeStories = excludeStoriesOpt !== undefined ? excludeStoriesOpt : [];
  var ignoredStories = excludeStories.length !== 0 ? "\$\$default|".concat(excludeStories.join("|")) : "\$\$default";
  return {
          title: title,
          excludeStories: new RegExp(ignoredStories),
          component: component,
          argTypes: argTypes
        };
}

exports.story = story;
/* No side effect */
