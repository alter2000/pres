---
title: |-
  ButterFS, BtreeFS, BetterFS, **Btrfs?**
# date: "2019-05-18"
theme: "black"
css: "main.css"
incremental: "true"
controls: "false"
progress: "false"
---

# Hello

::: notes
We're going to cook with butter now. If you have some space on your hard
drives, that would be great. Btrfs is a filesystem, so we will need some files
too. We can just make them as we go.
:::

# File systems

::: notes
What about them? Some wicked smaht people make them, and some of them have made
some nice things that are reminiscent of high school logic problems. What is
a union? Trees?

Back then before I existed, there was only one table in the beginning of the
filesystem with all the info needed for manipulating files at that time. That
was the time of FAT: File Allocation Table.

Anyway, a file system is what it says, a way to store files. There's a table
(or many of them) that keeps note of where your files are and some other
information about them. Most modern filesystems also have journaling features,
by which they provide some crash resistance.

How does this journaling work? Basically, before doing an operation, it is
written in _the journal_, then when there's a crash, the computer checks the
journal and what is actually completed to fix, if not recover lost information.

Now we can have things like the above, plus many more goodies: filesystems
spanning across multiple hardware drives without hassle, self-healing, backups
that only store the differences, live compression, and much more.
:::

## wut?

---

```{.mermaid format=svg width=max theme=forest caption="union filesystem driver oversimplified"}
  graph LR
  a[request I/O]
  a-->|read| b{exists in use layer?}
  b-->|no/offline| c(read from base)
  b-->|yes| e(read from use layer)
  a-->|write| f(modify use layer)
```

## OverlayFS (v2)

## What do?

* Something running GNU/Linux (keyboard preferred, monitor optional)
* Some free storage space in said thing
* Some time
* `btrfs-progs`

::: notes
A Linux box is preferred, if not necessary, since Windows has virtually no
suppport for Btrfs. There are drivers for Windows, but I've been told they're
not remotely good. I assume they are good enough for copying/reading, though.

You will need a package usually called `btrfs-progs`, some free space in
a thumb drive or your own hard drive, or a currently running Btrfs partition
(like me!)
:::

# The work

### Help sheet: <https://git.io/fh5ej>

# `more`: see above

## <sup>me</sup>

<https://ineedanew.pw>

Slides: <https://github.com/alter2000/pres>
