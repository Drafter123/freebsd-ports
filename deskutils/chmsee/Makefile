# Created by: Yinghong Liu <relaxbsd@gmail.com>
# $FreeBSD$

PORTNAME=	chmsee
PORTVERSION=	1.3.1.1
PORTREVISION=	4
CATEGORIES=	deskutils gnome
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE}

MAINTAINER=	sylvio@FreeBSD.org
COMMENT=	A viewer for Microsoft Help "CHM" files

BROKEN=		Does not work with newer libxul

DEPRECATED=	Does not work with newer libxul
EXPIRATION_DATE=	2013-09-01

LIB_DEPENDS=	chm.0:${PORTSDIR}/misc/chmlib \
		gcrypt:${PORTSDIR}/security/libgcrypt

LICENSE=	GPLv2

USE_GNOME=	gnomehier libglade2
USE_GECKO=	libxul
USES=		cmake gettext
CMAKE_ARGS=	-DCMAKE_INSTALL_RPATH_USE_LINK_PATH:BOOL=TRUE
INSTALLS_ICONS=	yes

MAN1=		chmsee.1

.include <bsd.port.pre.mk>

.if defined(GECKO) && ${GECKO:S/19//:Mlibxul}!=""
GTKMOZEMBED_LIB="${GECKO:S/19//}-embedding nspr"
.else
GTKMOZEMBED_LIB="${GECKO}-gtkmozembed"
CFLAGS+=	-I${LOCALBASE}/include/${GECKO}/commandhandler \
		-I${LOCALBASE}/include/${GECKO}/locale \
		-DGECKO_LIB_ROOT="\\\"\"${LOCALBASE}/lib/${GECKO}\"\\\""
.endif

post-extract:
	@(cd ${WRKSRC}/data; ${CP} -f chmsee.desktop.in chmsee.desktop.skel)

post-patch:
	@${REINPLACE_CMD} -e \
		'/REQUIRED/s|libxul-.*=1.9.0.999|${GTKMOZEMBED_LIB}|g ; \
		 /FLAVOUR/s|libxul|${GECKO:S/19//}|g' ${WRKSRC}/CMakeLists.txt
	@${REINPLACE_CMD} -e \
		's|.desktop.in|.desktop.skel|g' ${WRKSRC}/data/CMakeLists.txt

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/chmsee.1 ${MANPREFIX}/man/man1

.include <bsd.port.post.mk>
