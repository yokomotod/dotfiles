# Exclude pathnames (version control system directories and so on)
$EXCLUDE_PATH = %w[
. ..  lost+found tmp temp
autom4te.cache blib _build .bzr .cdv cover_db CVS _darcs ~.dep ~.dot .git .hg ~.nib .pc ~.plst RCS SCCS _sgbak .svn
]

# Exclude regexps (backup files, core files, and so on)
$EXCLUDE_REGEXP = Regexp.union(/~$/, /\#.+\#$/, /[._].*\.swp$/, /core\.\d+$/)

# Set default directories to collect
$LS_DIRS = ["~"]
