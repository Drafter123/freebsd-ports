# New ports collection makefile for:	grpplaylist
# Date created:				Fri May  7 13:17:54 CEST 2004
# Whom:					Markus Brueffer <markus@FreeBSD.org>
#
# $FreeBSD$

PORTNAME=	grpplaylist
PORTVERSION=	0.1
PORTREVISION=	10
CATEGORIES=	multimedia kde
MASTER_SITES=	SF
DISTNAME=	groupplaylist-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A playlist for Noatun

LIB_DEPENDS=	noatun:${PORTSDIR}/multimedia/kdemultimedia3

DEPRECATED=	Depends on QT3; unmaintained
EXPIRATION_DATE=	2013-07-01

USE_KDEBASE_VER=3
USE_AUTOTOOLS=	libtool
USE_GMAKE=	yes
GNU_CONFIGURE=	yes

post-patch:
	@${REINPLACE_CMD} -e 's|-O2|-fPIC|g' -e "s,-lpthread,${PTHREAD_LIBS},g" \
		${WRKSRC}/${CONFIGURE_SCRIPT}

.include <bsd.port.mk>
