


# sup

`git init`

---



# Anyone uses CLI git often?

---



# What for?

---



# Anyone uses sync services?

- Google Drive
- Dropbox
- Syncthing
- Nextcloud
- Sia

---



git can get that done too, _but_:

- only text files have sane compression and indexing
- binary files can't be diffed
- might need a more general-purpose compression algorithm
- no user-firendly tools around

# 'Copy of Untitled Document 1 final (finally final) (lolnotheresmore) (12).pptx'

---



# Some of you might know the power of git.

## Some might have even tried Subversion (svn)




## The next tools have a lot in common with git (and use its structures)

---



# `pass`

<https://www.passwordstore.org/>

The UNIX password manager

---



# `bup`

<https://bup.github.io/>

`tar` backup for when Tape ARchives are no longer viable (i.e. in every normal use case)
- git-compliant tree structure with incremental backups and compression
  - think btrfs/ZFS but only for files

---



## _How_ does git git to do such things?

- modular

- strictly adherent to the UNIX philosophy
  - especially formats and inter-program cooperation

- D E C E N T R A L I Z A T I O N (word of the decade, with git since 2005)
	- no central _remote_ (although one is assigned such a role)

- B L O C K C H A I N (immutable history for hipsters)
  - editing single commits != editing whole tree
  - `git commit --amend` only adds commits; does not change previous commit
	- `git reset` only hides (`git reflog`)

---




      ↓ HEAD                 ↓ git commit --amend
    +---+   +---+   +---+  +---+
    | e`+<--+ d`+<--+ c`+<-+ b`|
    +---+   +---+   +---+  +-+-+     ↓ git commit
    +---+   +---+   +---+  +-^-+   +---+   +------+
    | e +<--+ d +<--+ c +<-+ b +<--+ a +<--+ init |
    +---+   +---+   +---+  +-+-+   +---+   +------+
                             /                ↑ git init
           +----+   +---+   /
           | ii +<--+ i +<-/ ← git branch
           +----+   +---+

---





  Mercurial can do some of these
      although it's _not_ as flexible


---






# Too much?

  darcs        Subversion        Mercurial
