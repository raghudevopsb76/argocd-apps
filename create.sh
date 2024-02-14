for i in *.yaml ;do
  argocd app upsert $(echo $i | sed -e 's/.yaml//') --file=$i
done

