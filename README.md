# MJ Smart Tracker - README

## 🚨 IMPORTANT: Getting the Full Database to Load

**Are you seeing only 12 sample cards instead of 16,232?**

This happens when you open the HTML file directly (double-clicking it). Here's how to fix it:

---

## 🚀 Quick Start Options

### **Option 1: GitHub Pages (Recommended - Access Anywhere!)**

Deploy to GitHub Pages for free hosting accessible from any device:

1. **Follow the [GitHub Deployment Guide](GITHUB-DEPLOYMENT.md)**
2. Your site will be at: `https://YOUR-USERNAME.github.io/YOUR-REPO/`
3. Access from computer, phone, tablet - anywhere!
4. Share with friends and fellow collectors

**Benefits:**
- ✅ Access from anywhere with internet
- ✅ No local server needed
- ✅ Free forever
- ✅ HTTPS secure
- ✅ Mobile-optimized

### **Option 2: Local Web Server (Full Database)**

### **Windows Users:**

1. **Double-click `start-tracker.bat`**
2. A terminal window will open and start the server
3. Open your browser to: `http://localhost:8000/mj-smart-tracker.html`
4. Click **"Load Reference Database"**
5. You should see: **"✓ Database loaded successfully! 16,232 Michael Jordan cards are now searchable"**

### **Mac/Linux Users:**

1. **Open Terminal**
2. Navigate to the folder:
   ```bash
   cd /path/to/your/files
   ```
3. Run the script:
   ```bash
   ./start-tracker.sh
   ```
4. Open your browser to: `http://localhost:8000/mj-smart-tracker.html`
5. Click **"Load Reference Database"**

### **Manual Method (Any OS):**

1. **Open Terminal/Command Prompt**
2. **Navigate to the folder** containing your files:
   ```bash
   cd /path/to/your/tracker/folder
   ```
3. **Start Python web server:**
   ```bash
   python -m http.server 8000
   ```
   Or if you have Python 3:
   ```bash
   python3 -m http.server 8000
   ```
4. **Open browser** to: `http://localhost:8000/mj-smart-tracker.html`
5. **Click "Load Reference Database"**

---

## 📁 Required Files

Make sure these files are in the **same folder**:

```
your-folder/
├── index.html                     (The main app - 150KB)
├── jordan_cards_database.json     (Full database - 3.4MB)
├── start-tracker.sh               (Mac/Linux startup script)
└── start-tracker.bat              (Windows startup script)
```

**For GitHub Pages:** Only `index.html` and `jordan_cards_database.json` are required.

---

## 📱 Mobile Support

The tracker is **fully optimized for mobile devices**:

### **Automatic Mobile View**
- Detects screen size automatically
- Switches to card-based layout on phones
- Touch-friendly buttons (44pt minimum)
- Optimized keyboard inputs
- Smooth scrolling

### **Add to Home Screen**

**iPhone/iPad:**
1. Open tracker in Safari
2. Tap Share button (square with arrow)
3. Scroll down, tap "Add to Home Screen"
4. Name it "MJ Tracker"
5. Tap "Add"
6. Opens like a native app!

**Android:**
1. Open tracker in Chrome
2. Tap three dots menu
3. Select "Add to Home screen"
4. Open from home screen!

### **Mobile Features**
- ✅ Card view for easy browsing
- ✅ Large touch targets
- ✅ Optimized keyboard types
- ✅ Smooth autocomplete
- ✅ Works offline (after first load)
- ✅ Persistent storage

**See [TESTING-CHECKLIST.md](TESTING-CHECKLIST.md) for complete mobile testing guide.**

---

## ❓ Troubleshooting

### **Problem: Only 12 cards load**

**Cause:** Opening HTML file directly (file:// protocol) blocks loading external files for security.

**Solution:** Use a web server (see Quick Start above)

**How to verify:**
- Look at the URL bar
- If it shows `file:///...` → ❌ Won't work
- If it shows `http://localhost:8000/...` → ✅ Will work

---

### **Problem: "Database loaded" but still shows sample data**

**Check:**
1. Is `jordan_cards_database.json` in the same folder as the HTML file?
2. Did you start the web server from that folder?
3. Try refreshing the page
4. Check browser console (F12) for errors

---

### **Problem: Python not found**

**Windows:**
1. Download Python from python.org
2. During installation, check "Add Python to PATH"
3. Restart terminal/command prompt
4. Try again

**Mac:**
- Python usually pre-installed
- Try `python3` instead of `python`

**Linux:**
```bash
sudo apt install python3  # Ubuntu/Debian
sudo yum install python3  # CentOS/RHEL
```

---

### **Problem: Port 8000 already in use**

**Solution:** Use a different port:
```bash
python -m http.server 8001
```
Then open: `http://localhost:8001/mj-smart-tracker.html`

---

### **Problem: Can't access from phone/tablet**

**Steps:**
1. Find your computer's local IP address:
   - Windows: `ipconfig` → look for IPv4 Address
   - Mac/Linux: `ifconfig` → look for inet address
2. Use that IP instead of localhost:
   - Example: `http://192.168.1.100:8000/mj-smart-tracker.html`
3. Make sure phone and computer are on same WiFi

---

## ✅ Verification Checklist

After loading, you should see:

- [ ] Green banner: "✓ Full Database Loaded!"
- [ ] Shows: "16,232 cards searchable"
- [ ] Type "1989 Hoops" → See multiple results
- [ ] Type "Metal Universe" → See PMG cards
- [ ] Type "Fleer 57" → See rookie card

If you see a yellow banner saying "Sample Data Only (12 cards)" - you need to use a web server!

---

## 🎯 How It Works

### **The Smart Approach:**

1. **Your Collection** (Fast)
   - Only stores cards YOU own
   - Starts empty
   - Instant load

2. **Reference Database** (Optional)
   - 16,232 cards for validation
   - Loads when you click the button
   - Provides autocomplete
   - Not stored in your collection

### **File Sizes:**
- `mj-smart-tracker.html` = 150 KB (the app)
- `jordan_cards_database.json` = 3.4 MB (reference data)
- Your collection = a few KB (only your cards)

---

## 📱 Using the Tracker

### **Adding Cards:**

1. Click **"Add Card to Collection"**
2. Click **"Load Reference Database"** (first time only)
3. Start typing in search box
4. See autocomplete suggestions
5. Click a suggestion or enter manually
6. Add quantity, price, grade, notes
7. Click **"Add to Collection"**

### **Search Examples:**

- `1986 Fleer 57` → Rookie card
- `1989 Hoops` → All Hoops cards
- `Metal Universe PMG` → Precious Metal Gems
- `2003 Exquisite` → Exquisite cards
- `Star 101` → Star Company rookie
- `Topps Chrome` → All Chrome cards

### **Features:**

- ✅ Track quantity owned
- ✅ Track purchase prices
- ✅ Add PSA/BGS grades
- ✅ Custom notes per card
- ✅ Find card images (🖼️ button)
- ✅ Check prices on 130point.com (💰 button)
- ✅ Export/import collections
- ✅ Sort by any column
- ✅ Filter your collection

---

## 💾 Data Storage

**Where is my data saved?**
- Browser local storage (on your device)
- Survives browser restarts
- Device-specific (not synced)

**Important:**
- Export backups regularly
- Clearing browser data = losing collection
- Different browsers = different collections

---

## 🌐 Online Deployment (Optional)

Want to access from anywhere?

### **GitHub Pages:**
1. Create GitHub repository
2. Upload both files
3. Enable GitHub Pages
4. Access from: `https://yourusername.github.io/repo-name/mj-smart-tracker.html`

### **Netlify:**
1. Go to netlify.com/drop
2. Drag both files
3. Get instant URL
4. Access from anywhere

---

## 🔧 Advanced Tips

### **Import Existing Collection:**

1. Have a list of cards in Excel/Google Sheets
2. Export as JSON with this format:
```json
[
  {
    "description": "1986-87 Fleer 57 Michael Jordan RC",
    "year": "1986",
    "brand": "Fleer",
    "cardNumber": "57",
    "quantity": 2,
    "purchasePrice": "5000",
    "grade": "PSA 8",
    "notes": "Purchased at auction"
  }
]
```
3. Click "Import Collection"
4. Select the JSON file

### **Track Collection Value:**

- Dashboard shows total value automatically
- Value = sum of (purchasePrice × quantity)
- Update prices as market changes

---

## 📞 Support

**Still having issues?**

1. Check you're using a web server (not file://)
2. Verify both files are in same folder
3. Open browser console (F12) for error messages
4. Try a different browser
5. Make sure `jordan_cards_database.json` is 3.4 MB

---

## 📊 Quick Stats

- **Database:** 16,232 Michael Jordan cards
- **Years Covered:** 1982-2025
- **Brands:** 80+ manufacturers
- **File Size:** 3.4 MB (reference only)
- **Load Time:** ~1 second on local network

---

## 🎉 You're All Set!

Once you see the green banner saying **"Full Database Loaded! 16,232 cards searchable"**, you're ready to start building your collection!

**Happy collecting! 🏀**

---

## 🆘 Emergency Contact

If nothing works:

1. Download fresh files
2. Put them in a new folder
3. Run `python -m http.server 8000` from that folder
4. Open `http://localhost:8000/mj-smart-tracker.html`
5. Click "Load Reference Database"

This should work 100% of the time!
