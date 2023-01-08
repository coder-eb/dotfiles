# Goes up a directory n times
function up {
        if [[ "$#" < 1 ]] ; then
            cd ..
        else
            CDSTR=""
            for i in {1..$1} ; do
                CDSTR="../$CDSTR"
            done
            cd $CDSTR
        fi
}
