# Usefull Scripts for mass workload
Este repositorio contiene herramientas de automatización para procesar grandes volúmenes de archivos de forma eficiente.

## 🛡️ VirusTotal Mass Scanner (Multi-Extension)

This script automates the process of scanning multiple files against the **VirusTotal API**. It is designed to work with any file extension and includes a built-in delay to stay within the limits of the Free API tier (4 requests per minute).

### 📋 Prerequisites

* [fd-find](https://github.com/sharkdp/fd): A simple, fast and user-friendly alternative to 'find'. \
` brew install fd `
* [vt-cli](https://github.com/VirusTotal/vt-cli): VirusTotal's official command-line interface. \
`brew install vt-cli`
* **VT API Key**: Ensure you have your API key configured in `vt-cli`.

### 🚀 Usage

To use the script, simply replace the `EXT` variable with your target file type (e.g., `exe`, `zip`, `ts4script`).

```
fd -e "EXT" | while read file; do    
    echo "--- Scanning: $file ---" | tee -a scan_results.txt
    vt scan file "$file" -w -i last_analysis_stats >> scan_results.txt 2>&1
    echo "Done. Waiting 15s to respect API rate limits..."
    sleep 15
done
```
### Explanation
- `fd -e "extension"` finds all files with the specified extension
- `while read file` processes each file one by one
- `tee -a` :  Logs the current file being scanned
- `vt scan ... -w`: Sends the file to VirusTotal and wait for the scan to complete before moving to the next file
- `-i`: Include only 'last_analysis_stats' to keep the log clean
- `sleep 15`: 15s delay is recommended for the Free API Tier (4 requests/min)

### Control 

`grep -B 1 "suspicious: [1-9]" scan_results.txt`

If there is no result, then everything is fine. 
