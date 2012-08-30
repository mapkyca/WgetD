Simple Wget demon
=================

This is a very small shell script which monitors a directory for text files ending in .url, passes their
contents to wget, and downloads to a designated output directory.

Primarily this was written to play with inotify, but proves quite useful for a command line server (for example,
I currently use it on a NAS to automatically download large files without my desktop computer needing to be on).

Usage
-----

     ./wgetd.sh DIRECTORYTOMONITOR OUTPUTDIR

Where:

* DIRECTORYTOMONITOR is the directory containing the queue of .url files
* OUTPUTDIR is the directory that download files should be saved

It is probably a bad idea to have these two directories the same.

Requirements
------------

This tool requires, among other things:

* inotify-tools
* wget

Created by
----------

Marcus Povey: <http://www.marcus-povey.co.uk>

