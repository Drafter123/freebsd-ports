# New ports collection makefile for:    qtcurve-kde3
# Date created:                         23 May 2008
# Whom:                                 Dmitry Klimov <lazyklimm@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	qtcurve
PORTVERSION=	1.8.5
PORTREVISION=	1
CATEGORIES=	x11-themes
MASTER_SITES=	http://craigd.wikispaces.com/file/view/
PKGNAMEPREFIX=	kde-style-
DISTNAME=	QtCurve-KDE3-${PORTVERSION}

MAINTAINER=	5u623l20@gmail.com
COMMENT=	QtCurve KDE3 widget style

USE_BZIP2=	yes
USES=		cmake
USE_QT_VER=	3
CMAKE_ARGS=	-DQT_PLUGINS_DIR=${PREFIX}/lib/plugins

.include <bsd.port.mk>
