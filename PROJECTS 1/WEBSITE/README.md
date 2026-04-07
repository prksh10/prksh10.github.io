# Prakash Sharma — digital business card

Single-page site: open `index.html` in a browser, or host it for a public link.

**This folder is already a Git repo** (branch `main`, first commit done). You can skip `git init` / first commit in the steps below and go straight to connecting GitHub.

## Fastest way: live link in about one minute (Netlify Drop)

No terminal and no GitHub required.

1. Open **[https://app.netlify.com/drop](https://app.netlify.com/drop)** in your browser.
2. **Drag the whole `WEBSITE` folder** from File Explorer onto the dashed box (or zip the folder and drag the zip).
3. Netlify will show a link such as `https://random-name-123.netlify.app` — **that is your live site.** Copy it and share it.
4. Optional: create a free Netlify account to **change the name** (e.g. `prakash-card.netlify.app`) under site settings.

Your QR code on the Connect section will work once you open that live URL in the browser (it reads the public address automatically).

## Put the site live with GitHub Pages

### 1. Create a GitHub account and a new repository

1. Sign up or sign in at [https://github.com](https://github.com).
2. Click **New repository** (plus icon or “Repositories” → New).
3. Name it something short, e.g. `digital-card` (the name becomes part of your link).
4. Keep it **Public** (GitHub Pages is free on public repos).
5. Do **not** add a README on GitHub if you already have files on your computer—create an **empty** repo.

### 2. Get your files onto GitHub

**Option A — Git from the command line**

Install **Git for Windows** from [https://git-scm.com/download/win](https://git-scm.com/download/win), then use the commands in section 3.

**Option B — GitHub Desktop (no terminal)**

Install [https://desktop.github.com](https://desktop.github.com), sign in, **File → Add local repository** (choose this `WEBSITE` folder), publish to GitHub, then enable Pages as in section 4.

**Option C — Upload in the browser**

On the empty repo page, use **uploading an existing file**, drag in `index.html` (and `README.md` if you like), commit, then enable Pages.

### 3. Upload this folder from your PC

Open **PowerShell** or **Command Prompt**, then run these commands (change the path if your folder is elsewhere):

```powershell
cd "C:\Users\admin\Documents\PROJECTS 1\WEBSITE"
# Skip the next three lines if Git is already set up in this folder:
# git init
# git add index.html README.md
# git commit -m "Add digital business card site"
git branch -M main
```

Connect the folder to **your** new repo (replace `YOUR_USERNAME` and `YOUR_REPO`):

```powershell
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
git push -u origin main
```

GitHub will ask you to sign in. If it asks for a password, use a **Personal Access Token** (GitHub → Settings → Developer settings → Personal access tokens), not your normal password.

### 4. Turn on GitHub Pages

1. On GitHub, open your repository.
2. Go to **Settings** → **Pages** (left sidebar).
3. Under **Build and deployment** → **Source**, choose **Deploy from a branch**.
4. Branch: **main**, folder: **/ (root)** → **Save**.

After one or two minutes, your site will be at:

`https://YOUR_USERNAME.github.io/YOUR_REPO/`

(If the repository name is exactly `YOUR_USERNAME.github.io`, the URL is `https://YOUR_USERNAME.github.io/`.)

### 5. QR code on the page

When you open that **live** link, the **Connect** section builds a QR code that points to the same page. Guests can scan it to open your card.

If you ever open `index.html` from your hard drive (`file://`), the QR stays hidden until you either host the site or set `publicSiteUrl` inside `index.html` to your full GitHub Pages URL.

### 6. Updates later

After you change `index.html`:

```powershell
cd "C:\Users\admin\Documents\PROJECTS 1\WEBSITE"
git add index.html
git commit -m "Update site"
git push
```

Changes usually appear within a minute on GitHub Pages.

