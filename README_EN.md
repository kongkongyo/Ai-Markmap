<p align="center">
  <a href="./README.md">中文</a> | English
</p>

---

**`AiMarkmap`** is a zero-dependency, pure front-end single-file HTML application. It leverages the power of Large Language Models (LLMs) to intelligently transform your text, ideas, or Markdown content into well-structured, interactive mind maps. **Perfect for quickly organizing news reports, analyzing article structures, or digesting lengthy content, helping you grasp the core essence amidst vast amounts of information**.

![AiMarkmap Screenshot](screenshot.png)
> **An interesting fact about this project**:
> From initial concept to final implementation, over 90% of the code (including HTML, CSS, and JavaScript logic) was written, refactored, and iterated by AI (primarily `gpt-4o-mini`, `gemini-2.5-pro`, and `claude-3-7-sonnet`).

## ✨ Key Features

*   **🤖 AI-Powered Generation**: Enter any topic or paste large blocks of text, and AI will automatically extract key information and generate a structured mind map for you.
*   **🔄 Multi-Version Generation**: Adjust the slider to generate multiple (1-5) mind map versions with different styles and structures at once, allowing you to pick the best option.
*   **✍️ Interactive Editing & Optimization**:
    *   **Real-time Markdown Editing**: Modify Markdown content in the left editor, and the mind map on the right will update instantly.
    *   **Direct Node Operations**: **Right-click** any node on the mind map to directly **edit** or **delete** it, making it easy to fine-tune AI-generated results.
*   **🎨 Highly Customizable**:
    *   **API Settings**: Supports connecting to any endpoint compatible with the OpenAI API format (including self-hosted models), with cross-origin request support.
    *   **Model Selection**: Automatically queries and loads available model lists, while also supporting custom model name input.
    *   **Prompt Customization**: Through a dedicated settings panel, you have full control over the instructions (Prompt) sent to the AI to meet personalized needs.
*   **🚀 Efficient Operations**:
    *   **One-Click Paste & Generate**: Click the "Paste & Generate" button to directly read clipboard content and start AI generation, streamlining the workflow.
    *   **Bilingual Interface**: Built-in Chinese/English language switching to accommodate different user preferences.
*   **🖼️ Smart Export**:
    *   One-click export of the current mind map as a high-resolution PNG image or vector SVG file.
    *   **Smart File Naming**: Export filenames are automatically generated based on the mind map's central topic, formatted as `Topic_Timestamp.png/svg`, making management and retrieval easy.
*   **📱 Mobile Support**:
    *   Full support for mobile phones and tablets with responsive layout that adapts to different screen sizes.
    *   Bottom tab bar design for quick switching between editor and mind map views.
    *   Hamburger menu integrates settings access for convenient mobile operation.
    *   Landscape mode support for larger mind map preview space.
*   **⌨️ Keyboard Shortcuts**: Provides shortcuts for fullscreen, version switching, saving, quick generation, and more to enhance operational efficiency.
*   **❓ Help & Information**: Built-in help button that displays detailed usage instructions, terms of service, and privacy policy when clicked.
*   **🔒 Privacy & Security**: All configurations (including API keys) are stored in your local browser's `localStorage` and are never uploaded to any server.

## 🚀 Quick Start
*You can open the `index.html` file directly in your browser to start using it—no installation or build required.*
1.  **Download the File**: Download the `index.html` file.
2.  **Open in Browser**:
    *  **Desktop**: Open the HTML file directly in your browser (such as Chrome, Firefox, Edge).
    *  **Mobile**: Open in your phone or tablet browser, and the interface will automatically adapt. Landscape mode provides a better mind map viewing experience.
3.  **Configure API**:
    *   Click the **`⚙️ API Settings`** button in the upper left corner of the interface.
    *   In the **API URL** input field, enter the API root address provided by your AI service provider (e.g., `https://api.openai.com`). The tool will automatically complete the path to `/v1/chat/completions`.
    *   In the **API Key** input field, enter your API Key.
    *   Click **`💾 Save & Close`**.
4.  **Start Generating**:
    *   **Method 1 (Input)**: Enter the content you want to generate a mind map for in the left input box.
    *   **Method 2 (Paste)**: Click the **`📋 Paste & Generate`** button to automatically paste clipboard content and start generation.
    *   Use the slider to select the desired **number of versions**.
    *   Click the **`🚀 AI Generate`** button (or use the shortcut `Ctrl+Enter`).
5.  **Browse & Optimize**:
    *   Wait for AI processing to complete, and the generated mind map will be displayed on the right.
    *   If multiple versions were generated, click the **`Version X`** buttons at the top or use the `←` / `→` arrow keys to switch between them.
    *   **Right-click** nodes on the mind map to edit or delete them, quickly optimizing the structure.
6.  **Export**:
    *   Click the **`Export PNG`** or **`Export SVG`** button to save.
    *   The exported filename will be automatically generated based on the mind map's central topic, formatted as `Topic_YYYYMMDDHHMMSS.png/svg`.

## 🔧 Configuration Details

### API Settings
- **API URL**: Must be a URL compatible with the OpenAI `chat/completions` interface. The tool will automatically handle the trailing path.
    > **Tip**: If you don't have an API key yet, you can visit **[SiliconFlow](https://cloud.siliconflow.cn/i/9afjLTa)** to register—they provide some free AI models for users.
- **API Key**: Your service credentials. Click the `👁️` icon next to it to toggle key visibility.

### Model & Prompt
- **Model Selection**:
    - Click the **`🔍 Query`** button to automatically fetch the list of available models from your API URL and populate the dropdown.
    - You can also select `Custom` in the dropdown and manually enter the model name.
- **Prompt Settings**:
    - Click the **`📝 Prompt Settings`** button to open the Prompt editor.
    - You can modify the template to guide AI behavior. Be sure to keep the `{{CONTENT}}` placeholder, which will be replaced with your input content.

## ⌨️ Keyboard Shortcuts

| Key Combination  | Function                                    |
| ---------------- | ------------------------------------------- |
| `Ctrl` + `Enter` | Quick generate mind map from input box      |
| `F11`            | Toggle/exit mind map fullscreen display     |
| `Ctrl` + `S`     | Export current mind map as PNG image        |
| `←` / `→`        | Switch between multiple AI-generated versions |

## 🛠️ Tech Stack

This project is built entirely on native web technologies with no external framework dependencies.

-   **Core Logic**: Vanilla JavaScript (ES6+)
-   **Mind Map Rendering**: [Markmap](https://markmap.js.org/) (`markmap-lib@0.15.3` & `markmap-view@0.15.3`)
-   **SVG Rendering & Interaction Core**: [D3.js](https://d3js.org/) (`d3@7.8.5`)
-   **Image Export**: Implemented using **native Canvas API**
    -   **Rationale**: To reduce external dependencies, optimize performance, and support SVG export, the project uses the native Canvas API instead of third-party libraries. PNG export functionality is accomplished by drawing SVG content onto an offscreen Canvas, providing higher reliability and flexibility.

## 📝 Changelog

### Recent Updates
- **Mobile Support**: Full support for mobile phones and tablets with responsive layout, bottom navigation bar, hamburger menu, and landscape preview mode
- **Smart File Naming**: Exported SVG/PNG filenames are now automatically generated based on the mind map's central topic, formatted as `Topic_YYYYMMDDHHMMSS.extension`
- **Cross-Origin Support Optimization**: Improved model API URL construction logic for better cross-origin request support
- **Export Fix**: Fixed an issue where text might be incomplete when exporting SVG/PNG
- **Help System**: Added a help button that displays usage instructions, terms of service, and privacy policy when clicked

## Star History

<a href="https://www.star-history.com/?repos=kongkongyo%2FAi-Markmap&type=date&legend=top-left">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/image?repos=kongkongyo/Ai-Markmap&type=date&theme=dark&legend=top-left" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/image?repos=kongkongyo/Ai-Markmap&type=date&legend=top-left" />
   <img alt="Star History Chart" src="https://api.star-history.com/image?repos=kongkongyo/Ai-Markmap&type=date&legend=top-left" />
 </picture>
</a>


## 📜 License
This project is open-sourced under the [MIT License](./LICENSE).
