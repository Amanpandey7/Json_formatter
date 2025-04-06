const apiUrl = 'YOUR_API_GATEWAY_URL'; // <- Replace this after deploying API Gateway

document.getElementById('formatBtn').addEventListener('click', async () => {
  const rawJson = document.getElementById('input').value;

  try {
    const response = await fetch(apiUrl, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: rawJson
    });

    if (!response.ok) throw new Error('Failed to format JSON.');

    const formatted = await response.json();
    document.getElementById('output').value = JSON.stringify(formatted, null, 2);
  } catch (err) {
    document.getElementById('output').value = `Error: ${err.message}`;
  }
});
let apiUrl = '';

async function loadConfig() {
  const response = await fetch('config.json');
  const config = await response.json();
  apiUrl = config.api_url;
}

async function formatJson() {
  const rawJson = document.getElementById('input').value;

  try {
    const response = await fetch(apiUrl, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: rawJson
    });

    if (!response.ok) throw new Error('Failed to format JSON.');

    const formatted = await response.json();
    document.getElementById('output').value = JSON.stringify(formatted, null, 2);
  } catch (err) {
    document.getElementById('output').value = `Error: ${err.message}`;
  }
}

document.getElementById('formatBtn').addEventListener('click', formatJson);

// Load config on page load
window.onload = loadConfig;
