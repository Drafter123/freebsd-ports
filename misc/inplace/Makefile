# Created by: Akinori MUSHA aka knu <knu@idaemons.org>
# $FreeBSD$

PORTNAME=	inplace
PORTVERSION=	1.2.3
CATEGORIES=	misc
MASTER_SITES=	ftp://ftp.iDaemons.org/pub/distfiles/ \
		${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	knu

MAINTAINER=	knu@FreeBSD.org
COMMENT=	A tool to edit files in-place through given filter commands

USE_BZIP2=	yes
USE_RUBY=	yes

MAKE_ARGS=	PREFIX="${PREFIX}" MANPREFIX="${MANPREFIX}"
MAKEFILE=	BSDmakefile

RUBY_SHEBANG_FILES=	lib/inplace.rb

MAN1=		inplace.1
MANCOMPRESSED=	maybe
PLIST_FILES=	bin/inplace

test: build
	cd ${WRKSRC}; ${MAKE} test

.include <bsd.port.mk>
