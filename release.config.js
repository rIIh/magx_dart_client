module.exports = {
  branches: [
    "master",
  ],
  plugins: [
    [
      "@semantic-release/commit-analyzer",
      {
        releaseRules: [
          { scope: "develop", release: false },
          { scope: "config", release: "patch" },
          { scope: "no-release", release: false },
        ],
        parserOpts: {
          mergePattern: "^Merge branch '(.*)' into '(.*)'$",
          mergeCorrespondence: ["source", "id"],
        },
      },
    ],
    [
      "@semantic-release/release-notes-generator",
      {
        preset: "conventionalcommits",
      },
    ],
    "semantic-release-dart",
    [
      "@semantic-release/changelog",
      {
        changelogFile: "docs/CHANGELOG.md",
      },
    ],
    [
      "@semantic-release/git",
      {
        "assets": ["docs/CHANGELOG.md", 'pubspec.yaml']
      }
    ],
    "@semantic-release/github",
  ],
};
