# Latest git via Archlinux

FROM archlinux:base

RUN pacman -Sy --noconfirm git
# Install vim so we can edit commit messages etc
RUN pacman -S --noconfirm vim
# Install less so we can page
RUN pacman -S --noconfirm less

# By providing user details at build time we can ensure the user exists inside
# the container and not have permissinos issues down the line
ARG USER_NAME
ARG USER_UID
ARG USER_GID

RUN groupadd --gid $USER_GID $USER_NAME
RUN useradd --uid $USER_UID --gid $USER_GID $USER_NAME

ENTRYPOINT ["git"]
CMD ["--help"]
