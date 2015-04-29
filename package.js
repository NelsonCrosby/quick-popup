Package.describe({
  name: 'ncrosby:quick-popup',
  version: '0.1.0',
  summary: 'A super-simple popup system',
  git: 'https://github.com/NelsonCrosby/quick-popup.git'
});

Package.onUse(function(api) {
  api.versionsFrom('1.1.0.2');
  api.use('jquery@1.6.0', 'client');
  api.addFiles(['popup.js', 'popup.css'], 'client');
});
