# Created by: Andrew Pantyukhin <infofarmer@FreeBSD.org>
# $FreeBSD$

PORTNAME=	sexy
PORTVERSION=	0.1.9
PORTREVISION=	6
DISTVERSIONPREFIX=	python-
CATEGORIES=	x11-toolkits python
MASTER_SITES=	http://releases.chipx86.com/libsexy/sexy-python/ CENKES
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Libsexy bindings for Python

LIB_DEPENDS=	sexy.2:${PORTSDIR}/x11-toolkits/libsexy

USE_AUTOTOOLS=	libtool
USE_GNOME=	pygtk2
USE_PYTHON=	yes
USES=		pkgconfig
GNU_CONFIGURE=	yes

.include <bsd.port.mk>
