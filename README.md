# AiMarkmap [中文](./README_cn.md)

**`AiMarkmap`** is a zero-dependency, single-file HTML application. It leverages the powerful capabilities of large language models (LLMs) to intelligently transform your text, ideas, or Markdown content into clear and interactive mind maps. It is particularly suitable for quickly organizing news articles, analyzing article structures, or digesting lengthy content, helping you swiftly capture the core essence from a vast amount of information.

![AiMarkmap Screenshot](screenshot.png)
> **An Interesting Fact About This Project**:
> More than 90% of the code (including HTML, CSS, and JavaScript logic) for this project—from initial concept to final implementation—was written, rewritten, and iterated by AI (mainly using gemini-2.5-pro and claude-3-7-sonnet).

## ✨ **Main Features**

*   **🤖 Smart AI Generation**: Enter any topic or paste lengthy text; AI automatically extracts key information and generates structured mind maps for you.
*   **🔄 Multi-Version Generation**: Adjust the slider to generate one to five different styles and structures of mind maps in a single operation, selecting the best option that suits your needs.
*   **✍️ Real-time Markdown Preview**: Directly write or paste Markdown content and have it rendered into a mind map in real time. Additionally, AI-generated results can be edited and updated instantly.
*   **🎨 Highly Customizable**:
    *   **API Settings**: Connect to any API endpoint compatible with the OpenAI API format (including self-hosted models).
    *   **Model Selection**: Automatically query and load available model lists; supports custom model names as well.
    *   **Prompt Customization**: Through an independent settings panel, you have full control over prompts sent to AI to meet personalized needs.
*   **🌐 Bilingual Interface**: Built-in Chinese-English language switching to accommodate different user preferences.
*   **🖼️ Export as PNG**: Save the current mind map as a high-resolution PNG image with one click for easy sharing and storage.
*   **⌨️ Keyboard Support**: Offers full-screen (`F11`), version switching (`←`/`→`), and save (`Ctrl+S`) shortcuts to enhance efficiency.
*   **🐳 Easy Deployment**: Offers docker deployment options, allowing you to run it in a containerized environment with just a few commands.

## 🚀 **Quick Start**
### Use Directly in Browser

1.  **Download File**:
    Download the `AiMarkmap.html` file.
2.  **Open in Browser**:
    Open the HTML file directly in your modern browser (e.g., Chrome, Firefox, Edge).
3.  **Configure API**:
    *   Click the **`⚙️ API Settings`** button in the top right corner.
    *   In the **API Address** input field, enter the API address provided by your AI service provider (the tool automatically appends `/chat/completions`). For example: `https://api.openai.com/v1`.
    *   In the **API Key** input field, enter your API key.
    *   Click **`💾 Save and Close`**.
4.  **Start Generating**:
    *   Enter the content you want to generate mind maps for in the left text box.
    *   Use the slider to select the number of versions desired.
    *   Click the **`🚀 AI Generate`** button.
5.  **View and Export**:
    *   Wait for AI processing to complete, after which the generated mind map will appear on the right.
    *   If multiple versions are generated, click the top **`Version X`** button to switch between them.
    *   Click the **`Export PNG`** button to save the image.

### Container Deployment

1. Build Docker Image:

```bash
docker build -t ai-mindmap .
```

2. Run Container:

```bash
docker run -d -p 8080:80 --name ai-mindmap-container --restart unless-stopped ai-mindmap
```

Open your browser and navigate to `http://127.0.0.1:8080` to access it, with the rest of the configuration remaining the same.

## 🔧 **Configuration Details**

### API Settings

- **API Address**: Must be a URL compatible with OpenAI's `chat/completions` interface. The tool automatically handles the path suffix.
    > **Hint**: If you do not have an API key yet, you can register at **[SiliconFlow (硅基流动)](https://cloud.siliconflow.cn/i/9afjLTa)** and they offer some free AI models.
- **API Key**: Your service credentials. Click the adjacent `👁️` icon to toggle the visibility of your key.

### Model & Prompt

- **Model Selection**:
    - Click the **`🔍 Query`** button to automatically fetch available model lists from your API address and populate them into the dropdown menu.
    - You can also select `Custom` in the dropdown menu and manually input the model name.
- **Prompt Settings**:
    - Click the **`📝 Prompt Settings`** button to open the prompt editor.
    - Modify the template to guide AI behavior. Ensure that you keep the `{{CONTENT}}` placeholder, which will be replaced with your input content.

## ⌨️ **Keyboard Shortcuts**

| Key Combination              | Function                       |
| ---------------------------- | ------------------------------- |
| `F11`                        | Toggle/Exit Full-Screen View  |
| `Ctrl + S`                   | Export Mind Map to PNG         |
| `←` / `→`                    | Switch Between AI Generated Versions |

## 🛠️ **Technology Stack**

This project is entirely built using native web technologies with no external frameworks.

-   **Core Logic**: Vanilla JavaScript (ES6+)
-   **Mind Map Rendering**: [Markmap](https://markmap.js.org/) (`markmap-lib` & `markmap-view`)
-   **SVG Rendering Core**: [D3.js](https://d3js.org/)
-   **Image Export**: [html2canvas](https://html2canvas.hertzen.com/)

## 📜 **License**

This project is open source under the [MIT License](./LICENSE).
