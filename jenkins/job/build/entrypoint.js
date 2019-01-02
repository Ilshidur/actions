const Jenkins = require('jenkins');

const jenkins = Jenkins({
  baseUrl: process.env.BASE_URL,
  crumbIssuer: true,
  promisify: true
});

const token = process.env.TOKEN

jenkins.job.build({
  name: process.env.JOB_NAME,
  ...token ? { token } : {},
  ...process.env.PARAMETERS || {}
})
  .then(() => {
    console.log('Succesfully triggered the Jenkins build.');
    process.exit(0);
  })
  .catch(err => {
    console.error(err);
    process.exit(1);
  })
