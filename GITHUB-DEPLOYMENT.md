# 🚀 GitHub Pages Deployment Guide

## Quick Deploy to GitHub Pages

### Step 1: Create GitHub Repository

1. Go to [github.com](https://github.com) and log in
2. Click the **"+"** icon → **"New repository"**
3. Repository settings:
   - **Name:** `mj-card-tracker` (or any name you prefer)
   - **Description:** "Michael Jordan Trading Card Collection Tracker"
   - **Visibility:** Public (required for free GitHub Pages)
   - **Initialize:** Don't check any boxes
4. Click **"Create repository"**

---

### Step 2: Upload Files

You have two options:

#### **Option A: Web Upload (Easiest)**

1. On your new repository page, click **"uploading an existing file"**
2. Drag and drop these files:
   - `index.html`
   - `jordan_cards_database.json`
3. Add commit message: "Initial commit - MJ Card Tracker"
4. Click **"Commit changes"**

#### **Option B: Git Command Line**

```bash
# Navigate to your folder
cd /path/to/your/tracker/files

# Initialize git
git init

# Add remote
git remote add origin https://github.com/YOUR-USERNAME/mj-card-tracker.git

# Add files
git add index.html jordan_cards_database.json

# Commit
git commit -m "Initial commit - MJ Card Tracker"

# Push
git branch -M main
git push -u origin main
```

---

### Step 3: Enable GitHub Pages

1. In your repository, click **"Settings"** tab
2. Scroll to **"Pages"** in left sidebar
3. Under **"Source"**, select:
   - Branch: `main`
   - Folder: `/ (root)`
4. Click **"Save"**
5. Wait 1-2 minutes for deployment

---

### Step 4: Access Your Site

Your tracker will be available at:
```
https://YOUR-USERNAME.github.io/mj-card-tracker/
```

For example:
- If your username is `cardcollector123`
- Repository is `mj-card-tracker`
- URL will be: `https://cardcollector123.github.io/mj-card-tracker/`

---

## ✅ Verification Checklist

After deployment, verify:

- [ ] Site loads at your GitHub Pages URL
- [ ] Click "Load Reference Database"
- [ ] See green banner: "Full Database Loaded! 16,232 cards searchable"
- [ ] Search works (try "1989 Hoops")
- [ ] Can add cards to collection
- [ ] Can export/import collection
- [ ] Mobile responsive (test on phone)

---

## 📱 Mobile Testing

### Test on iPhone/iPad:
1. Open Safari
2. Go to your GitHub Pages URL
3. Add to Home Screen:
   - Tap Share button
   - Scroll down and tap "Add to Home Screen"
   - Name it "MJ Tracker"
   - Tap "Add"
4. Open from home screen like a native app!

### Test on Android:
1. Open Chrome
2. Go to your GitHub Pages URL
3. Tap three dots menu
4. Select "Add to Home screen"
5. Open from home screen!

---

## 🔧 Updating Your Site

### Via Web Interface:

1. Go to your repository
2. Click on the file you want to edit
3. Click the pencil icon (Edit)
4. Make changes
5. Commit changes
6. Wait 1-2 minutes for redeployment

### Via Git:

```bash
# Make your changes to files

# Add changes
git add .

# Commit
git commit -m "Update tracker"

# Push
git push origin main
```

---

## 🎯 Custom Domain (Optional)

Want to use your own domain like `mj-cards.com`?

1. Buy domain from registrar (GoDaddy, Namecheap, etc.)
2. In repository Settings → Pages
3. Add your custom domain
4. Configure DNS with your registrar:
   ```
   Type: CNAME
   Host: www
   Value: YOUR-USERNAME.github.io
   ```
5. Wait for DNS propagation (up to 24 hours)

---

## 🔒 Make Repository Private (Paid GitHub)

If you have GitHub Pro, you can make the repository private:
1. Settings → Danger Zone
2. Change visibility to Private
3. GitHub Pages still works!

**Note:** Free accounts can only use GitHub Pages with public repos.

---

## 📊 Site Analytics (Optional)

Want to track visitors?

### Google Analytics:
Add before `</head>` in index.html:
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=YOUR-GA-ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'YOUR-GA-ID');
</script>
```

---

## 🆘 Troubleshooting

### **Site shows 404 error**
- Wait 2-3 minutes after enabling Pages
- Check Settings → Pages shows green "Your site is live"
- Verify branch and folder settings

### **Database won't load**
- Check browser console (F12)
- Verify `jordan_cards_database.json` is uploaded
- Clear browser cache and reload

### **Changes not showing**
- GitHub Pages can take 1-5 minutes to update
- Hard refresh: Ctrl+Shift+R (Windows) or Cmd+Shift+R (Mac)
- Check commit was successful

### **Database file too large**
- GitHub has 100MB file limit (your file is 3.4MB - fine!)
- If you ever exceed, use Git LFS

---

## 🎉 You're Live!

Your MJ card tracker is now:
- ✅ Accessible from anywhere with internet
- ✅ Works on desktop and mobile
- ✅ Free hosting forever
- ✅ HTTPS secure
- ✅ Can share with friends

Share your collection:
```
Check out my MJ card collection!
https://YOUR-USERNAME.github.io/mj-card-tracker/
```

---

## 📝 Next Steps

1. **Bookmark your site** for easy access
2. **Add to phone home screen** for app-like experience
3. **Share URL with fellow collectors**
4. **Export backups** regularly
5. **Star the repo** to find it easily later

---

## 🔗 Useful Links

- [GitHub Pages Docs](https://docs.github.com/en/pages)
- [Git Basics](https://git-scm.com/book/en/v2/Getting-Started-Git-Basics)
- [Markdown Guide](https://guides.github.com/features/mastering-markdown/)

---

**Need help?** Open an issue in your repository or check the README.md

Happy collecting! 🏀🔥
