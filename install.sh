set_architecture()
{
    case  $1  in
        linux/amd64)       
            ARCH="amd64"
            ;;
        linux/arm64)
            ARCH="aarch64"
            ;;            
        linux/arm/v7)       
            ARCH="armhf"
            ;;
        linux/arm/v6)       
            ARCH="arm"
            ;;
        *)              
    esac
}

set_architecture $TARGETPLATFORM
curl -L -s https://github.com/just-containers/s6-overlay/releases/download/v1.22.1.0/s6-overlay-$ARCH.tar.gz | tar xvzf - -C /
mv /init /s6-init