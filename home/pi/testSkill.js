// Simple test harness for gistCommentReview skill

const { execSync } = require('child_process');

async function gistCommentReview(gistUrl) {
  const match = gistUrl.match(/gist\.github\.com\/[^/]+\/([a-f0-9]+)/);
  if (!match) return { error: 'Invalid Gist URL' };
  const gistId = match[1];
  const apiEndpoint = `https://api.github.com/gists/${gistId}/comments`;
  let stdout;
  try {
    stdout = execSync(`curl -s -H "Accept: application/vnd.github.v3+json" ${apiEndpoint}`, { encoding: 'utf8', timeout: 15000 });
  } catch (e) {
    return { error: e.message };
  }
  let comments;
  try {
    comments = JSON.parse(stdout);
  } catch (e) {
    return { error: 'Failed to parse GitHub response' };
  }
  if (!Array.isArray(comments) || comments.length === 0) {
    return { error: 'No comments found on this gist' };
  }
  const lastComment = comments[comments.length - 1];
  const body = typeof lastComment.body === 'string' ? lastComment.body : '';
  return {
    text: body,
    summary: `Fetched ${comments.length} comment(s); last comment (ID ${lastComment.id}) contains ${body.length} characters.`
  };
}

(async () => {
  const gistUrl = process.argv[2] || 'https://gist.github.com/ontouchstart/16469e49bf5b2e924ce170e6af0d6f53';
  const result = await gistCommentReview(gistUrl);
  console.log('Result:', result);
})();
