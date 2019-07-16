.PHONY: configmap

configmap:
	-kubectl delete configmap icecube-gridftp-config -n osg
	kubectl create configmap icecube-gridftp-config -n osg \
             --from-file=grid-mapfile --from-file=80_pod_init.sh \
             --from-file=40-siteinfo.ini \
             --from-file=gridftp.conf

ceph-secret:
	kubectl create secret -n osg generic icecube-gridftp-ceph --from-literal=key=YOUR-SECRET-HERE
