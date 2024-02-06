# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.2

EAPI=8

CRATES="
	addr2line@0.21.0
	adler32@1.2.0
	adler@1.0.2
	aes@0.7.5
	aho-corasick@1.1.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	ansi_term@0.12.1
	anstream@0.6.4
	anstyle-parse@0.2.2
	anstyle-query@1.0.0
	anstyle-wincon@3.0.1
	anstyle@1.0.4
	anyhow@1.0.75
	arrayref@0.3.7
	arrayvec@0.7.4
	async-broadcast@0.5.1
	async-channel@1.9.0
	async-executor@1.6.0
	async-fs@1.6.0
	async-io@1.13.0
	async-lock@2.8.0
	async-process@1.8.1
	async-recursion@1.0.5
	async-signal@0.2.4
	async-task@4.5.0
	async-trait@0.1.74
	atomic-waker@1.1.2
	atty@0.2.14
	autocfg@1.1.0
	backtrace@0.3.69
	base64@0.21.5
	base64ct@1.6.0
	bcrypt-pbkdf@0.6.2
	bincode@1.3.3
	bit-vec@0.6.3
	bitflags@1.3.2
	bitflags@2.4.1
	blake3@1.5.0
	block-buffer@0.10.4
	block-buffer@0.9.0
	block-modes@0.8.1
	block-padding@0.2.1
	blocking@1.4.1
	blowfish@0.8.0
	bs58@0.4.0
	bstr@1.7.0
	bumpalo@3.14.0
	byteorder@1.5.0
	bytes@1.5.0
	canonical-path@2.0.2
	cc@1.0.83
	cfg-if@1.0.0
	chrono@0.4.31
	cipher@0.3.0
	clap@3.2.25
	clap_complete@3.2.5
	clap_derive@3.2.25
	clap_lex@0.2.4
	colorchoice@1.0.0
	concurrent-queue@2.3.0
	console@0.15.7
	constant_time_eq@0.3.0
	core-foundation-sys@0.8.4
	core-foundation@0.9.3
	cpufeatures@0.2.11
	crc32fast@1.3.2
	crossbeam-deque@0.8.3
	crossbeam-epoch@0.9.15
	crossbeam-utils@0.8.16
	crypto-common@0.1.6
	crypto-mac@0.11.1
	cryptovec@0.6.1
	ctr@0.8.0
	ctrlc@3.2.0
	curve25519-dalek@3.2.1
	data-encoding@2.4.0
	dateparser@0.1.8
	derivative@2.2.0
	dialoguer@0.10.4
	diffs@0.5.1
	digest@0.10.7
	digest@0.9.0
	dirs-next@2.0.0
	dirs-sys-next@0.1.2
	dirs-sys@0.3.7
	dirs@3.0.2
	ed25519-dalek@1.0.1
	ed25519@1.5.3
	edit@0.1.4
	either@1.9.0
	encode_unicode@0.3.6
	encoding_rs@0.8.33
	enumflags2@0.7.8
	enumflags2_derive@0.7.8
	env_logger@0.8.4
	equivalent@1.0.1
	errno-dragonfly@0.1.2
	errno@0.2.8
	errno@0.3.5
	event-listener@2.5.3
	event-listener@3.0.0
	fastrand@1.9.0
	fastrand@2.0.1
	filetime@0.2.22
	flate2@1.0.28
	fnv@1.0.7
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	form_urlencoded@1.2.0
	fs2@0.4.3
	futures-channel@0.3.29
	futures-core@0.3.29
	futures-executor@0.3.29
	futures-io@0.3.29
	futures-lite@1.13.0
	futures-macro@0.3.29
	futures-sink@0.3.29
	futures-task@0.3.29
	futures-util@0.3.29
	futures@0.3.29
	fuzzy-matcher@0.3.7
	generic-array@0.14.7
	getrandom@0.1.16
	getrandom@0.2.10
	gimli@0.28.0
	git2@0.13.25
	globset@0.4.13
	h2@0.3.21
	hashbrown@0.12.3
	hashbrown@0.14.2
	heck@0.4.1
	hermit-abi@0.1.19
	hermit-abi@0.3.3
	hex@0.4.3
	hkdf@0.12.3
	hmac@0.11.0
	hmac@0.12.1
	home@0.5.5
	http-body@0.4.5
	http@0.2.9
	httparse@1.8.0
	httpdate@1.0.3
	human-panic@1.2.1
	humantime@2.1.0
	hyper-tls@0.5.0
	hyper@0.14.27
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.58
	idna@0.2.3
	idna@0.4.0
	ignore@0.4.20
	indexmap@1.9.3
	indexmap@2.0.2
	instant@0.1.12
	io-lifetimes@1.0.11
	ipnet@2.9.0
	itoa@1.0.9
	jobserver@0.1.27
	js-sys@0.3.64
	keyring@2.0.5
	lazy_static@0.2.11
	lazy_static@1.4.0
	libc@0.2.149
	libgit2-sys@0.12.26+1.3.0
	libpijul@1.0.0-beta.9
	libsodium-sys@0.2.7
	libssh2-sys@0.2.23
	libz-sys@1.1.12
	linked-hash-map@0.5.6
	linux-keyutils@0.2.3
	linux-raw-sys@0.3.8
	linux-raw-sys@0.4.10
	lock_api@0.4.11
	log@0.4.20
	lru-cache@0.1.2
	matches@0.1.10
	md5@0.7.0
	memchr@2.6.4
	memmap@0.7.0
	memoffset@0.6.5
	memoffset@0.7.1
	memoffset@0.9.0
	mime@0.3.17
	minimal-lexical@0.2.1
	miniz_oxide@0.7.1
	mio@0.8.9
	native-tls@0.2.11
	nix@0.22.3
	nix@0.26.4
	nom@7.1.3
	num-bigint@0.4.4
	num-complex@0.4.4
	num-integer@0.1.45
	num-iter@0.1.43
	num-rational@0.4.1
	num-traits@0.2.17
	num@0.4.1
	num_cpus@1.16.0
	object@0.32.1
	once_cell@1.18.0
	opaque-debug@0.3.0
	open@3.2.0
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.93
	openssl@0.10.57
	ordered-stream@0.2.0
	os_info@3.7.0
	os_str_bytes@6.6.1
	pager@0.16.1
	parking@2.2.0
	parking_lot@0.11.2
	parking_lot_core@0.8.6
	password-hash@0.2.3
	path-slash@0.1.5
	pathdiff@0.2.1
	pbkdf2@0.8.0
	pbkdf2@0.9.0
	percent-encoding@2.3.0
	pijul-macros@0.5.0
	pin-project-lite@0.2.13
	pin-utils@0.1.0
	piper@0.2.1
	pkg-config@0.3.27
	polling@2.8.0
	ppv-lite86@0.2.17
	proc-macro-crate@1.3.1
	proc-macro-error-attr@1.0.4
	proc-macro-error@1.0.4
	proc-macro2@1.0.69
	ptree@0.4.0
	quote@1.0.33
	rand@0.7.3
	rand@0.8.5
	rand_chacha@0.2.2
	rand_chacha@0.3.1
	rand_core@0.5.1
	rand_core@0.6.4
	rand_hc@0.2.0
	redox_syscall@0.2.16
	redox_syscall@0.3.5
	redox_users@0.4.3
	regex-automata@0.4.3
	regex-syntax@0.8.2
	regex@1.10.2
	reqwest@0.11.22
	rlimit@0.6.2
	rustc-demangle@0.1.23
	rustix@0.37.26
	rustix@0.38.20
	ryu@1.0.15
	same-file@1.0.6
	sanakirja-core@1.3.3
	sanakirja@1.3.3
	schannel@0.1.22
	scopeguard@1.2.0
	secret-service@3.0.1
	security-framework-sys@2.9.1
	security-framework@2.9.2
	serde@1.0.190
	serde_bytes@0.11.12
	serde_derive@1.0.190
	serde_json@1.0.107
	serde_repr@0.1.16
	serde_spanned@0.6.4
	serde_urlencoded@0.7.1
	sha1@0.10.6
	sha2@0.10.8
	sha2@0.9.9
	shell-words@1.1.0
	signal-hook-registry@1.4.1
	signature@1.6.4
	slab@0.4.9
	smallvec@1.11.1
	socket2@0.4.10
	socket2@0.5.5
	static_assertions@1.1.0
	strsim@0.10.0
	subtle@2.4.1
	syn@1.0.109
	syn@2.0.38
	system-configuration-sys@0.5.0
	system-configuration@0.5.1
	tar@0.4.40
	tempfile@3.8.0
	termcolor@1.3.0
	terminal_size@0.1.17
	textwrap@0.16.0
	thiserror-impl@1.0.50
	thiserror@1.0.50
	thread_local@1.1.7
	threadpool@1.8.1
	thrussh-config@0.5.0
	thrussh-keys@0.21.0
	thrussh-libsodium@0.2.2
	thrussh@0.33.5
	tint@1.0.1
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio-macros@2.1.0
	tokio-native-tls@0.3.1
	tokio-stream@0.1.14
	tokio-util@0.7.10
	tokio@1.33.0
	toml@0.5.11
	toml@0.7.8
	toml_datetime@0.6.5
	toml_edit@0.19.15
	tower-service@0.3.2
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing@0.1.40
	try-lock@0.2.4
	twox-hash@1.6.3
	typenum@1.17.0
	uds_windows@1.0.2
	unicode-bidi@0.3.13
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	unicode-width@0.1.11
	url@2.4.1
	utf8parse@0.2.1
	uuid@1.5.0
	validator@0.15.0
	vcpkg@0.2.15
	version_check@0.9.4
	waker-fn@1.1.1
	walkdir@2.4.0
	want@0.3.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasi@0.9.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.87
	wasm-bindgen-futures@0.4.37
	wasm-bindgen-macro-support@0.2.87
	wasm-bindgen-macro@0.2.87
	wasm-bindgen-shared@0.2.87
	wasm-bindgen@0.2.87
	wasm-streams@0.3.0
	web-sys@0.3.64
	which@4.4.2
	whoami@1.4.1
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.51.1
	windows-sys@0.42.0
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-targets@0.42.2
	windows-targets@0.48.5
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.5
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.5
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.5
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.5
	winnow@0.5.17
	winreg@0.50.0
	xattr@1.0.1
	xdg-home@1.0.0
	yasna@0.4.0
	zbus@3.14.1
	zbus_macros@3.14.1
	zbus_names@2.6.0
	zeroize@1.3.0
	zeroize_derive@1.4.2
	zstd-seekable@0.1.23
	zvariant@3.15.0
	zvariant_derive@3.15.0
	zvariant_utils@1.0.1
"

inherit cargo

DESCRIPTION="A distributed version control system."
HOMEPAGE="https://pijul.org"
SRC_URI="
	${CARGO_CRATE_URIS}
"
BDEPEND="
sys-devel/clang
sys-devel/llvm
dev-libs/libsodium
dev-libs/openssl
dev-libs/xxhash
app-arch/zstd
virtual/pkgconfig
"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"
