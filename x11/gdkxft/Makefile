# Created by: Maxim Sobolev <sobomax@FreeBSD.org>
# $FreeBSD$

PORTNAME=	gdkxft
PORTVERSION=	1.5
PORTREVISION=	7
CATEGORIES=	x11
MASTER_SITES=	SF

MAINTAINER=	ports@FreeBSD.org
COMMENT=	An anti-aliased font support for gtk+

LIB_DEPENDS=	Xft.2:${PORTSDIR}/x11-fonts/libXft

USE_AUTOTOOLS=	libtool
USE_GNOME=	gtk12
USES=		iconv
GNU_CONFIGURE=	yes
LDFLAGS+=	-L${LOCALBASE}/lib -lgnuregex -liconv
CFLAGS+=	`pkg-config xft --cflags`
CONFIGURE_ARGS=	--sbindir=${PREFIX}/bin \
		--without-gnome
USE_LDCONFIG=	yes

MAN8=		gdkxft_sysinstall.8

.include <bsd.port.options.mk>

post-patch:
	@${REINPLACE_CMD} -e 's|gtk-config --prefix|$$GTK_CONFIG --prefix|g ; \
		 s|libgdk.la|libgdk-12.so|g ; \
		 s|libgdk.so|libgdk-12.so|g ; \
		 s|GDK_DLOPEN_NAME=.*$$|GDK_DLOPEN_NAME="libgdk-12.so"|g' \
			${WRKSRC}/configure
	@${FIND} ${WRKSRC} -name "Makefile.in" | ${XARGS} ${REINPLACE_CMD} -e \
		's|src capplet|src @BUILD_CAPPLET_TRUE@capplet|g ; \
		 s|DESTDIR)\$$(datadir|DESTDIR)\$$(pkgdatadir|g ; \
		 s|la_LDFLAGS =.*$$|la_LDFLAGS = -module -avoid-version|g'
.for file in gdkxft_sysinstall.in gdkxft.c generate.pl
	@${REINPLACE_CMD} -e 's|<regex.h>|<gnuregex.h>|g ; \
		 s|gtk-config |${GTK_CONFIG:T} |g' ${WRKSRC}/src/${file}
.endfor

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
