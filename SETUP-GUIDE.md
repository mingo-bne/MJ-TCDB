# Michael Jordan Card Tracker - Setup Guide

## 🏀 What You Have

I've created a complete Michael Jordan trading card tracking system with the following components:

### Files Created:

1. **jordan-card-tracker-full.html** - The main web application (single HTML file)
2. **jordan_cards_database.json** - Your complete database of 16,232 cards
3. **This setup guide**

---

## ✨ Features

### Card Database
- Complete database of 16,232 Michael Jordan cards
- Search by description, year, brand, or card number
- Filter and sort capabilities
- Highlights cards you own

### Collection Tracking
- Track quantity owned for each card
- Visual highlighting of owned cards
- Statistics dashboard (total cards, unique owned, total quantity)
- Persistent storage (your data saves automatically)

### Integration Features
- **Image Search** 🖼️ - Click to search Google Images for card photos
- **Price Checking** 💰 - Click to search 130point.com for recent sales prices
- Quick filters for owned cards only

### Data Management
- Export your collection as JSON backup
- Import collection from backup
- Reset collection option

---

## 🚀 Quick Start (Local Usage)

### Method 1: Simple Local File (Easiest)

1. **Open the HTML file directly:**
   - Double-click `jordan-card-tracker-full.html`
   - Your browser will open it
   - Start tracking immediately!

**Note:** With local file usage, you'll start with sample data. To load your full database:

2. **Load your full database:**
   - Place `jordan_cards_database.json` in the same folder as the HTML file
   - Refresh the page
   - All 16,232 cards will load automatically

### Method 2: Local Web Server (Recommended)

For full functionality, use a local web server:

**Option A - Python:**
```bash
# Navigate to folder with your files
cd /path/to/jordan-tracker

# Start server (Python 3)
python -m http.server 8000

# Open browser to:
http://localhost:8000/jordan-card-tracker-full.html
```

**Option B - Node.js:**
```bash
# Install http-server globally
npm install -g http-server

# Navigate to folder
cd /path/to/jordan-tracker

# Start server
http-server -p 8000

# Open browser to:
http://localhost:8000/jordan-card-tracker-full.html
```

---

## 🌐 Online Deployment (For Access Anywhere)

### GitHub Pages (Free & Easy)

1. **Create GitHub account** (if you don't have one)
   - Go to github.com

2. **Create new repository:**
   - Click "+" → "New repository"
   - Name: `jordan-cards`
   - Make it Public
   - Click "Create repository"

3. **Upload files:**
   - Click "uploading an existing file"
   - Upload both:
     - `jordan-card-tracker-full.html`
     - `jordan_cards_database.json`
   - Click "Commit changes"

4. **Enable GitHub Pages:**
   - Go to Settings → Pages
   - Source: "main" branch
   - Click Save

5. **Access your app:**
   - URL will be: `https://yourusername.github.io/jordan-cards/jordan-card-tracker-full.html`
   - Share this URL to access from any device!

### Alternative: Netlify Drop

1. Go to netlify.com/drop
2. Drag both files into the drop zone
3. Get instant live URL
4. Free hosting!

---

## 💾 Data Storage

### How Your Data is Saved

The app uses **browser storage** to save your collection:
- Data persists across sessions
- Automatic saving when you update quantities
- No server required
- Private to your browser

### Important Notes:

⚠️ **Browser storage is device-specific:**
- Data saved on your laptop won't appear on your phone
- Clearing browser data will erase your collection
- **Always export backups regularly!**

### Best Practices:

1. **Export your collection weekly:**
   - Click "📥 Export Collection"
   - Save the JSON file safely (Dropbox, Google Drive, etc.)

2. **Import when needed:**
   - Moving to new device? Click "📤 Import Collection"
   - Select your backup file
   - Your collection is restored!

---

## 🔍 Using the Features

### Search & Filter

**Search Box:**
- Type any text to search card descriptions
- Example: "Fleer" finds all Fleer cards
- Example: "rookie" finds rookie cards

**Year Filter:**
- Dropdown with all available years
- Find cards from specific seasons

**Brand Filter:**
- Dropdown with all brands
- Example: Select "Topps" for all Topps cards

**Card Number Filter:**
- Type card numbers
- Example: "23" finds all #23 cards

**Show Owned Only:**
- Toggle to see only cards you own
- Great for reviewing your collection

### Image Search 🖼️

Click the blue 🖼️ button:
- Opens Google Images in new tab
- Pre-filled search for that specific card
- Find photos for grading reference
- See different variations

### Price Checking 💰

Click the green 💰 button:
- Opens 130point.com in new tab
- Searches for recent sales of that card
- See market prices and trends
- Compare PSA/BGS graded values

### Tracking Quantities

**In the "Qty" column:**
- Click the number field
- Type how many you own
- Press Enter or click away to save
- Card row highlights in green when owned

---

## 📊 Dashboard Statistics

Top-right corner shows:
- **Total Cards**: 16,232 (complete database)
- **Unique Owned**: Different cards you have
- **Total Owned**: Total quantity across all cards

Example:
- You have 3x 1986 Fleer #57
- You have 1x 1997 Metal Universe PMG
- Unique Owned = 2
- Total Owned = 4

---

## 🔧 Customization

### Modify the Database

If you need to update the card database:

1. **Edit jordan_cards_database.json**
2. **Format:**
```json
[
  {
    "description": "Card full description",
    "year": "1986",
    "brand": "Fleer",
    "cardNumber": "57",
    "serialNumber": "",
    "qtyOwned": 0,
    "marketPrice": ""
  }
]
```

### Add Custom Columns

Edit the HTML file to add fields like:
- Purchase price
- Purchase date
- Grade (PSA/BGS)
- Storage location
- Notes

---

## ❓ Troubleshooting

### "Sample data only showing"
- Make sure `jordan_cards_database.json` is in the same folder
- Use a web server (not just opening HTML file)
- Clear browser cache and refresh

### "Collection not saving"
- Check if browser allows storage (not in private/incognito mode)
- Export backups regularly as fallback

### "Images not loading from search"
- Click the 🖼️ button to manually search
- Some cards may have limited online images

### "Can't find specific card"
- Use broader search terms
- Try searching by year + brand
- Check spelling variations

---

## 🎯 Tips for Best Experience

1. **Regular Backups:** Export weekly/monthly
2. **Organize by Sets:** Use brand filter to work on one set at a time
3. **Track New Acquisitions:** Update immediately after purchases
4. **Price Research:** Use 💰 button before buying/selling
5. **Image Verification:** Use 🖼️ button to verify card authenticity

---

## 📱 Mobile Use

The app is fully responsive:
- Works on phones and tablets
- Touch-friendly buttons
- Optimized layout for small screens
- Same features as desktop

---

## 🆘 Need Help?

### Common Questions

**Q: Can multiple people use this?**
A: Yes! Each person's browser has separate data. Or use shared Google Sheets for team tracking.

**Q: Can I track PSA/BGS grades?**
A: Not built-in, but you can note grades in quantity field (like "101" = 1 PSA 10, 1 raw)

**Q: Can I add purchase prices?**
A: Export collection, add custom fields in Excel, then import back.

**Q: Is my data secure?**
A: Stored locally in your browser. No one else can access it.

---

## 🚀 Future Enhancements

Possible additions:
- Grading integration
- Purchase price tracking
- Collection value estimation
- Set completion percentage
- Print/PDF collection report
- Multi-user sync
- Mobile app version

---

## 📄 File Inventory

✅ **jordan-card-tracker-full.html** (856 KB)
   - Complete web application
   - Includes all React code
   - No external dependencies needed
   - Works offline after first load

✅ **jordan_cards_database.json** (3 MB)
   - 16,232 Michael Jordan cards
   - Parsed and cleaned data
   - Ready to load

✅ **setup-guide.md** (This file)
   - Complete instructions
   - Troubleshooting tips
   - Best practices

---

## 🎉 You're Ready!

Your Michael Jordan card tracker is ready to use. Start by:

1. Opening `jordan-card-tracker-full.html`
2. Exploring the sample data
3. Setting up the full database (if using local server)
4. Start tracking your collection!

**Happy collecting! 🏀🔥**

---

## 📞 Support

For issues or questions:
1. Check troubleshooting section above
2. Review your browser console for errors (F12)
3. Ensure files are in the same directory
4. Try different browser if issues persist

Made with ❤️ for MJ collectors
