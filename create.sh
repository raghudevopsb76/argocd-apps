for i in *.yaml ;do
  argocd app create $(echo $i | sed -e 's/.yaml//') --file=$i
done

