# Created by: Cyrille Lefevre <clefevre@citeweb.net>
# $FreeBSD$

PORTNAME=		gcal
PORTVERSION=		3.6.3
CATEGORIES=		deskutils
MASTER_SITES=		GNU

MAINTAINER=	johans@FreeBSD.org
COMMENT=	The GNU Gregorian calendar program

USE_XZ=		yes
GNU_CONFIGURE=	yes
CONFIGURE_ENV=	MAKEINFO="makeinfo --no-split"

INFO=		gcal
#MAN1=		gcal.1 gcal2txt.1 tcal.1 txt2gcal.1

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USES=		gettext
PLIST_SUB+=	NLS=""
.else
CONFIGURE_ARGS+=--disable-nls
PLIST_SUB+=	NLS="@comment "
.endif

GCAL_SCRIPTS=	daily/daily ddiff/ddiff ddiff/ddiffdrv dst/dst gcalltx/gcalltx \
		gcalltx/gcalltxp moon/moon mrms/mrms srss/srss wloc/wlocdrv

post-patch:
.for p in ${GCAL_SCRIPTS}
	@${REINPLACE_CMD} -e '/^ThisGcal=/s:=.*:=${PREFIX}/bin/gcal:' \
		-e '/^packagedatamiscdir=/s:=.*:=${DATADIR}/misc/${p:H}:' \
		${WRKSRC}/misc/${p}.in
.endfor

post-install:
	@${TAR} -cf - -C ${WRKSRC} --exclude '*.in' --exclude '*.in.bak' \
		--exclude '*.alias' misc | ${TAR} -xpf - -C ${DATADIR}
.for p in ${GCAL_SCRIPTS}
	@${CHMOD} +x ${DATADIR}/misc/${p}
	@${LN} -s ${DATADIR}/misc/${p} ${PREFIX}/bin/gcal-${p:T}
.endfor

.include <bsd.port.mk>
