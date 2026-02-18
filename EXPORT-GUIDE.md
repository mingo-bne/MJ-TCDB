# 📊 Export Features Guide

## 🎯 Four Export Options

Your collection can be exported in four different formats:

### 1. 📄 JSON Export
**Best for:** Complete backup, reimporting later

**What it includes:**
- All card data
- All variants with grades
- Complete price history
- All metadata
- Everything!

**How to use:**
1. Click "📄 JSON" button
2. File downloads automatically
3. Save somewhere safe
4. Import later with "📤 Import JSON"

**File name:** `mj-collection-2026-02-18.json`

---

### 2. 📊 CSV Export
**Best for:** Spreadsheet programs, databases, simple analysis

**What it includes:**
- One row per variant
- All card details
- Grade information
- Purchase data
- Notes

**How to use:**
1. Click "📊 CSV" button
2. File downloads automatically
3. Open in Excel, Numbers, Google Sheets
4. Analyze, sort, filter

**Format:**
```
Card,Year,Brand,Card Number,Grade Company,Grade,Quantity,Purchase Price,Purchase Date,Notes,Validated
"1986 Fleer 57 Michael Jordan",1986,Fleer,57,PSA,10,1,5000,2/14/2024,"Auction purchase",Yes
"1986 Fleer 57 Michael Jordan",1986,Fleer,57,PSA,8,2,900,2/14/2024,"Bulk lot",Yes
```

**File name:** `mj-collection-2026-02-18.csv`

---

### 3. 📈 Excel Export (XLSX)
**Best for:** Professional analysis, sharing, presentations

**What it includes:**
- **Two sheets:**
  - **Summary Sheet:** One row per card with totals
  - **Details Sheet:** One row per variant

**Summary Sheet Columns:**
- Card
- Year
- Brand
- Card #
- Variants (count)
- Total Qty
- Total Cost
- Validated

**Details Sheet Columns:**
- Card
- Year
- Brand
- Card #
- Grade Company
- Grade
- Quantity
- Purchase Price
- Purchase Date
- Notes
- Validated

**How to use:**
1. Click "📈 Excel" button
2. File downloads automatically
3. Open in Microsoft Excel, LibreOffice, Numbers
4. Two tabs ready for analysis

**Requirements:**
- Loads SheetJS library from CDN (first use only)
- Internet connection needed for first export
- Cached for future exports

**File name:** `mj-collection-2026-02-18.xlsx`

---

### 4. 📑 Google Sheets Export
**Best for:** Cloud storage, sharing, collaboration

**What it includes:**
- Same data as CSV
- Auto-copied to clipboard
- CSV file also downloads as backup

**How to use:**
1. Click "📑 Google Sheets" button
2. See confirmation message
3. Go to sheets.google.com
4. Create new spreadsheet
5. Click cell A1
6. Press Ctrl+V (or Cmd+V)
7. Data appears!

**Steps in detail:**
```
1. Click "📑 Google Sheets"
   ↓
2. Alert shows: "✅ CSV data copied to clipboard!"
   ↓
3. CSV also downloads as backup
   ↓
4. Open Google Sheets
   ↓
5. New spreadsheet
   ↓
6. Click A1
   ↓
7. Paste (Ctrl+V)
   ↓
8. Done! ✅
```

---

## 📋 Comparison Table

| Feature | JSON | CSV | Excel | Google Sheets |
|---------|------|-----|-------|---------------|
| **Size** | Largest | Medium | Medium | Medium |
| **Completeness** | 100% | 90% | 95% | 90% |
| **Re-importable** | ✅ Yes | ❌ No | ❌ No | ❌ No |
| **Spreadsheet** | ❌ No | ✅ Yes | ✅ Yes | ✅ Yes |
| **Cloud-ready** | Manual | Manual | Manual | ✅ Auto |
| **Multiple sheets** | N/A | No | ✅ Yes | No |
| **Price history** | ✅ Yes | ❌ No | ❌ No | ❌ No |
| **Variants** | ✅ All | ✅ All | ✅ All | ✅ All |

---

## 🎯 Which Format to Use?

### Backup Your Collection:
**Use:** 📄 JSON
- Complete data
- Can restore everything
- Includes price history
- Re-importable

### Share with Someone:
**Use:** 📈 Excel
- Professional format
- Two sheets (summary + details)
- Easy to read
- Works everywhere

### Analyze Data:
**Use:** 📊 CSV or 📈 Excel
- Pivot tables
- Charts
- Formulas
- Sorting/filtering

### Collaborate Online:
**Use:** 📑 Google Sheets
- Cloud-based
- Real-time sharing
- Comments
- Access anywhere

### Insurance/Documentation:
**Use:** 📈 Excel or 📊 CSV
- Print-friendly
- Official format
- Easy to attach to emails

---

## 💡 Pro Tips

### Backup Strategy:
1. **Weekly:** Export JSON for complete backup
2. **Monthly:** Export Excel for records
3. **Before big changes:** Export JSON

### Cloud Storage:
1. Export JSON
2. Upload to Google Drive / Dropbox / iCloud
3. Safe from computer crashes

### Portfolio Tracking:
1. Export Excel monthly
2. Compare Total Cost columns
3. Track value changes over time
4. Create charts

### Insurance Documentation:
1. Export Excel with all data
2. Include card images (from tracker)
3. Save PDF version
4. Update yearly

### Sharing Your List:
1. Export Excel
2. Delete purchase prices if private
3. Share summary sheet only
4. Keep details sheet hidden

---

## 📊 Export Data Structure

### Summary View (Excel Sheet 1):
```
Card                              | Variants | Total Qty | Total Cost
1986 Fleer 57 Michael Jordan      | 3        | 8         | $7,800
1997 Metal Universe 23 MJ PMG     | 1        | 1         | $15,000
```

### Details View (All exports):
```
Card                         | Grade | Qty | Price  | Date
1986 Fleer 57 Michael Jordan | PSA 10| 1   | $5,000 | 2/14/2024
1986 Fleer 57 Michael Jordan | PSA 8 | 2   | $900   | 2/14/2024
1986 Fleer 57 Michael Jordan | Raw   | 5   | $200   | 12/20/2023
```

---

## 🔧 Troubleshooting

### Excel export says "Error creating Excel file"
**Solution:** Try CSV export instead, then open CSV in Excel

### Google Sheets paste doesn't work
**Solution:** 
1. Check clipboard permissions
2. Try manual CSV download
3. Import CSV to Google Sheets (File → Import)

### CSV has weird characters
**Solution:** Open with UTF-8 encoding in your spreadsheet program

### Can't open XLSX file
**Solution:** 
1. Make sure you have Excel, LibreOffice, or Numbers
2. Try online viewer: office.com
3. Use CSV instead

---

## 📁 File Formats Explained

### JSON (.json)
```json
{
  "description": "1986 Fleer 57 Michael Jordan",
  "variants": [
    {
      "gradeCompany": "PSA",
      "gradeValue": "10",
      "quantity": 1,
      "purchasePrice": "5000"
    }
  ],
  "priceHistory": [...]
}
```

### CSV (.csv)
```
Card,Year,Brand,Grade,Qty,Price
"1986 Fleer 57 MJ",1986,Fleer,PSA 10,1,5000
```

### XLSX (.xlsx)
- Binary Excel format
- Multiple sheets
- Formatted cells
- Professional

---

## ✅ Best Practices

### Regular Exports:
- Set reminder to export monthly
- Keep 3 months of backups
- Store in multiple locations

### File Naming:
- Automatic date stamps
- Easy to sort chronologically
- Clear what each file is

### Data Privacy:
- JSON has ALL data including private notes
- CSV/Excel good for sharing (edit first)
- Remove prices before sharing

### Version Control:
- Keep old exports
- Compare changes month-to-month
- Track collection growth

---

## 🚀 Quick Export Guide

**Just want a backup?**
→ Click 📄 JSON

**Sending to friend?**
→ Click 📈 Excel, delete prices, share

**Need spreadsheet?**
→ Click 📊 CSV or 📈 Excel

**Working online?**
→ Click 📑 Google Sheets

**All formats?**
→ Export all four, pick what you need later!

---

## 📈 Use Cases

### 1. Track Investment Over Time
```
Month 1: Export Excel → Total: $5,000
Month 2: Export Excel → Total: $7,800
Month 3: Export Excel → Total: $12,500
Growth: 150% 🚀
```

### 2. Share Trading List
```
1. Export Excel
2. Keep Details sheet
3. Sort by Grade
4. Share with traders
```

### 3. Insurance Claim
```
1. Export Excel (both sheets)
2. Add images column
3. Print PDF
4. Submit with policy
```

### 4. Portfolio Analysis
```
1. Export CSV
2. Import to Excel
3. Create pivot table
4. Chart by year/brand/grade
```

---

**Now you can export your collection in any format you need!** 📊✨
