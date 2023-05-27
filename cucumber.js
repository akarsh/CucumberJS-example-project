module.exports = {
    default: {
      format: ['progress-bar', 'json:cucumber-report.json', 'html:cucumber-report.html'],
      formatOptions: { 'snippetInterface':'synchronous' },
      publishQuiet: true
    }
  }
  