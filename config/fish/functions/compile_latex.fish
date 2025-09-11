function compile_latex
    if test (count $argv) -eq 0
        echo "Usage: compile <filename.tex>"
        exit 1
    end

    set TEXFILE $argv[1]
    if not test -f $TEXFILE
        echo "File $TEXFILE does not exist"
        exit 1
    end

    if not type -q docker
        echo "Docker not installed"
        exit 1
    end

    set IMAGE texlive/texlive
    if not docker images | rg -q $IMAGE
        echo "Image not installed, pulling $IMAGE"
        docker pull texlive/texlive:latest
    end

    set PROJECT (pwd)
    docker run --rm \
        -v "$PROJECT:/data" \
        -w /data \
        $IMAGE \
        /bin/bash -c "pdflatex $TEXFILE && biber $(basename $TEXFILE .tex) && pdflatex $TEXFILE && pdflatex $TEXFILE"
end
