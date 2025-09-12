function compile_latex

    set TEXFILE (rg -l "%\s?!\s?TEX\s+root" (fd -e tex))

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
        /bin/bash -c "latexmk -pdf $TEXFILE"
end
