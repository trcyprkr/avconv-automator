# avconv-automator
In conjunction with crontab, avconv automator will automatically find the new audio file and re-encode to mp3 format.  This is a bash script.  I put this script together to automate a simple task that is very time consuming. It can be modified for video as well.  

Basically, this is what i'm accomplishing with this setup.  I'm downloading a fairly large MP3 file from blogtalkradio.com with WGET into my home folder, changing the name of the file concurrent with the download.  I'm also downloading a file from a dropbox.com folder with a script called  Dropbox Uploader created by Andrea Fabrizi <andrea.fabrizi@gmail.com> and is available at https://github.com/andreafabrizi/Dropbox-Uploader. Once the file is downloaded from dropbox, both the blogtalkradio file and the dropbox file will be located and re-encoded to a 64k stream thereby reducing the size of the MP3 for easier downloading and uploading (the original files are fairly large).  Each file is encoded into it's own folder.

LFTP is then used to upload the newly encoded files to their respective locations on the podcasting server. LFTP automation is achieved by writing the appropriate variables into the .lftprc file.  Once the files are uploaded, i then use WGET --spider to update podcast feed to add the new additions. This is neccessary when uploading via FTP.  The podcasting software was is called Podcast Generator and was downloaded from http://www.podcastgenerator.net/home

See comments for more info.

If anyone has any better ideas, please let me know.

Thanks.
