# sidneylisanza.github.io

Personal website for Sidney Lisanza, built as a simple static site for GitHub Pages.

## Local preview

You can preview it with any static file server, for example:

```bash
python3 -m http.server
```

Then open `http://localhost:8000`.

## Resume workflow

The website links to `Sidney_Lisanza_Resume.pdf` at the repo root.

The editable resume source lives in:

```bash
resume/resume.typ
```

To regenerate the PDF after editing the Typst source:

```bash
./resume/build.sh
```

This requires `typst` to be installed and available on your `PATH`.
