# Created by: Yukihiro Nakai <nakai@FreeBSD.org>
# $FreeBSD$

PORTNAME=	sawfish
PORTVERSION=	1.9.1
PORTEPOCH=	2
CATEGORIES=	x11-wm
MASTER_SITES=	http://download.tuxfamily.org/sawfish/%SUBDIR%/
MASTER_SITE_SUBDIR=	. Archive

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Lisp configurable window manager

LICENSE=	ART20 GPLv2
LICENSE_COMB=	multi

BUILD_DEPENDS=	rep-gtk2>=0.90:${PORTSDIR}/x11-toolkits/rep-gtk2
LIB_DEPENDS=	cairo:${PORTSDIR}/graphics/cairo \
		rep:${PORTSDIR}/lang/librep
RUN_DEPENDS=	rep-gtk2>=0.90:${PORTSDIR}/x11-toolkits/rep-gtk2

USE_XZ=		yes
USES=		gettext pathfix pkgconfig
USE_XORG=	ice sm x11 xft xinerama xrandr xtst
USE_GNOME=	gnomehier gtk20
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--localstatedir=${PREFIX}/share \
		--datadir=${PREFIX}/share
INSTALLS_ICONS=	yes
MAKE_JOBS_SAFE=	yes

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

MANCOMPRESSED=	yes
MAN1=		sawfish.1 sawfish-client.1 sawfish-config.1
INFO=		sawfish

PORTSCOUT=	limit:^1\.9\.[0-9]

post-patch:
	@${REINPLACE_CMD} -e \
		'/dnsdomainname/d' ${WRKSRC}/build-info
	@${REINPLACE_CMD} -e \
		'/KDEDIR/s|^|#|g' ${WRKSRC}/Makefile.in
	@${REINPLACE_CMD} -e \
		's|/share/man/|/man/|g' ${WRKSRC}/man/Makefile.in
	@${REINPLACE_CMD} -e \
		's|prog_name|program_name|g' ${WRKSRC}/src/main.c

.include <bsd.port.mk>
