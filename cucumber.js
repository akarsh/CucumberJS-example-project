module.exports = {
    default: {
      format: ['progress', 'json:cucumber-report.json', 'html:cucumber-report.html'],
      formatOptions: { 'snippetInterface':'synchronous' },
      publishQuiet: true
    }
  }
  